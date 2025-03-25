package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MemberLoginOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		result.setRedirect(true);
		
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();

		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		memberVO.setMemberEmail(email);
		memberVO.setMemberPassword(password);
		
		String findEmail = memberDAO.selectByEmailAndPassword(memberVO);
		
		if(findEmail == null) {
			result.setPath(req.getContextPath() + "/login.member?login=false");
		}else {
			session.setAttribute("loginID", findEmail);
			result.setPath("../main/main.main");
		}
		
		return result;
	}

}
