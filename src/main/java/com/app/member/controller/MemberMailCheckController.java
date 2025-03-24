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
		String authCode = (String)session.getAttribute("mailAuthCode");
		String inputAuthCode = req.getParameter("mailAuthCode");

		boolean mailCheckResult = false;
		
		mailCheckResult = inputAuthCode.equals(authCode);
		
        if(mailCheckResult) {
        	member.setMemberEmail((String)session.getAttribute("email"));
        	session.setAttribute("mailAuthCode", authCode);
        	session.setAttribute("newMember", member);
        }else {
        	session.setAttribute("email", "");
        	session.setAttribute("mailAuthCode", "");
        }
        
        System.out.println((MemberVO)session.getAttribute("newMember"));
        
//        System.out.println(session.getAttribute("newMember"));
        resp.setContentType("application/json"); // JSON 응답으로 설정
        resp.getWriter().write("{\"mailCheckResult\": " + mailCheckResult + ", \"mailCheckResultMessage\": \"" + (mailCheckResult ? "인증 성공" : "인증 실패") + "\"}");
        
		return null;
	}

}
