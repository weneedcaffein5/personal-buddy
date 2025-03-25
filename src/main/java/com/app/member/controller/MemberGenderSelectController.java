package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.vo.MemberVO;

public class MemberGenderSelectController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		
		HttpSession session = req.getSession();
		
		MemberVO member = (MemberVO)session.getAttribute("newMember");
		String gender = (String)req.getParameter("gender");
		
		member.setMemberGender(gender);
		session.setAttribute("newMember", member);
		
		resp.setContentType("application/json"); // JSON 응답으로 설정
        resp.getWriter().write("{\"genderSelect\": \"" + gender + "\"}");
		return null;
	}

}
