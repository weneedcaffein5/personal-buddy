package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.vo.MemberVO;

public class MemberMailCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		HttpSession session = req.getSession();
		
		MemberVO member = (MemberVO)session.getAttribute("newMember");
		String AuthCode = (String)session.getAttribute("authCode");
		String inputAuthCode = req.getParameter("authCode");

		boolean checkOk = false;
		
		checkOk = inputAuthCode.equals(AuthCode);
		
        if(checkOk) {
        	member.setMemberEmail((String)session.getAttribute("email"));
        	session.setAttribute("newMember", member);
        }
        
        System.out.println(session.getAttribute("newMember"));
        resp.setContentType("application/json"); // JSON 응답으로 설정
        resp.getWriter().write("{\"mailOk\": " + checkOk + ", \"message\": \"" + (checkOk ? "인증 성공" : "인증 실패") + "\"}");
        
		return null;
	}

}
