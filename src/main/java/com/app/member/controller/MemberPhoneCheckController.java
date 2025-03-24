package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.vo.MemberVO;

public class MemberPhoneCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		HttpSession session = req.getSession();
		
		MemberVO member = (MemberVO)session.getAttribute("newMember");
		String authCode = (String)session.getAttribute("phoneAuthCode");
		String inputAuthCode = req.getParameter("phoneAuthCode");

		boolean phoneCheckResult = false;
		
		phoneCheckResult = inputAuthCode.equals(authCode);
		
        if(phoneCheckResult) {
        	member.setMemberPhone((String)session.getAttribute("phone"));
        	session.setAttribute("phoneAuthCode", authCode);
        	session.setAttribute("newMember", member);
        }else {
        	session.setAttribute("phone", "");
        	session.setAttribute("phoneAuthCode", "");
        }
        
        
        System.out.println((MemberVO)session.getAttribute("newMember"));
//        System.out.println(session.getAttribute("newMember"));
        resp.setContentType("application/json"); // JSON 응답으로 설정
        resp.getWriter().write("{\"phoneCheckResult\": " + phoneCheckResult + ", \"phoneCheckResultMessage\": \"" + (phoneCheckResult ? "인증 성공" : "인증 실패") + "\"}");
        
		
		return null;
	}

}
