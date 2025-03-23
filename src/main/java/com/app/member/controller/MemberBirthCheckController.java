package com.app.member.controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.vo.MemberVO;

public class MemberBirthCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		
		HttpSession session = req.getSession();
		
		MemberVO member = (MemberVO)session.getAttribute("newMember");
		String birth = req.getParameter("birthDate");
		
		boolean birthCheckResult = birth != null;
		
		if(birthCheckResult) {
			member.setMemberBirth(Timestamp.valueOf(birth  + " 00:00:00"));
			session.setAttribute("newMember", member);
		}

        // 응답 설정        
        resp.setContentType("application/json; charset=UTF-8");
        resp.getWriter().write("{\"birthCheckResult\": " + birthCheckResult + "}");
		
		return null;
	}

}
