package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;

public class MemberSendPhoneAuthController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		HttpSession session = req.getSession();
		
		String phoneNumber = req.getParameter("phone");
		MemberDAO memberDao = new MemberDAO();
		
		String smsText = "[퍼스널 버디 인증 확인]";
        
		String regex = "^[0-9]{11}$";
        boolean phoneCheckResult = phoneNumber != null && phoneNumber != "" && phoneNumber.matches(regex);
        
		if(!phoneCheckResult) {
			session.setAttribute("phone", "");
        	session.setAttribute("phoneAuthCode", "");
        	resp.setContentType("application/json"); // JSON 응답으로 설정
            resp.getWriter().write("{\"samePhoneResult\": true, \"samePhoneResultMessage\": \"※ 번호 입력이 제대로 되지 않았습니다.\"}");
            return null;
		}
		
        // 4자리 랜덤 인증번호 생성
        // 테스트용 숫자 0 4자리
        String authCode = "0000";
		/* String authCode = String.format("%04d", new Random().nextInt(9999)); */
        int phoneCount = memberDao.selectMemberCountByPhone(phoneNumber);
        
        
        if(phoneCount > 0) {
        	session.setAttribute("phone", "");
        	session.setAttribute("phoneAuthCode", "");
        	resp.setContentType("application/json"); // JSON 응답으로 설정
            resp.getWriter().write("{\"samePhoneResult\": true, \"samePhoneResultMessage\": \"※ 중복된 번호가 가입되어 있습니다.\"}");
            return null;
        }
        
        session.setAttribute("phone", phoneNumber);
    	session.setAttribute("phoneAuthCode", authCode);
    	resp.setContentType("application/json"); // JSON 응답으로 설정
        resp.getWriter().write("{\"samePhoneResult\": false}");
		return null;
	}

}
