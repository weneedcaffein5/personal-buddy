package com.app.member.controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.service.AuthenticationEmailService;

public class MemberSendMailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		
		String mailTitle = "[퍼스널 버디 인증 확인 메일]";
		
		MemberDAO memberDao = new MemberDAO();
		
		AuthenticationEmailService mailService = new AuthenticationEmailService();
		
		HttpSession session = req.getSession();
        String email = req.getParameter("email");
        
        int memberCount = memberDao.selectMemberCountByEmail(email);
        
        if(memberCount > 0) {
        	resp.setContentType("application/json"); // JSON 응답으로 설정
            resp.getWriter().write("{\"success\": false, \"message\": \"중복 메일\"}");
            return null;
        }

        if (email == null || email.trim().isEmpty()) {
            resp.setContentType("application/json"); // JSON 응답으로 설정
            resp.getWriter().write("{\"success\": false, \"message\": \"메일전송 실패\"}");
            return null;
        }
        
        // 6자리 랜덤 인증번호 생성
        // 테스트용 숫자 0 6자리
        String authCode = "000000";
		/* String authCode = String.format("%06d", new Random().nextInt(999999)); */
        
        // 세션에 인증번호 및 이메일 저장
        session.setAttribute("email", email);
        session.setAttribute("authCode", authCode);
        
        // 이메일 전송 로직 (JavaMail API)
        boolean emailSent = mailService.sendMail(mailTitle, email, authCode);
        
        resp.setContentType("application/json"); // JSON 응답으로 설정
        resp.getWriter().write("{\"success\": " + emailSent + ", \"message\": \"" + (emailSent ? "메일전송 완료" : "메일전송 실패") + "\"}");
		
		return null;
	}

}
