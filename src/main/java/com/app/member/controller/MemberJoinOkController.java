package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MemberJoinOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("newMember");
		MemberDAO memberDAO = new MemberDAO();
		
		System.out.println(member);
		memberDAO.isnert(member);
		
		result.setRedirect(true);
		result.setPath("interest-main.interest");
		return result;
	}

}
