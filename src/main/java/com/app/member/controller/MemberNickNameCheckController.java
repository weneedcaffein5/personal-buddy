package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MemberNickNameCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		HttpSession session = req.getSession();
		String inputNickName = req.getParameter("nickname");
		
		String regex = "^[가-힣a-zA-Z0-9]+$";
		
		MemberDAO memberDAO = new MemberDAO();
		MemberVO member = (MemberVO)session.getAttribute("newMember");
		boolean nicknameCheckResult = false;
		String nicknameCheckResultMessage = "";
		
		if(inputNickName != null && inputNickName.matches(regex)) {
			nicknameCheckResult = memberDAO.selectMemberCountByNickName(inputNickName) == 0;
			
			if(nicknameCheckResult) {
				member.setMemberNickName(inputNickName);
				session.setAttribute("newMember", member);
			} else {
				nicknameCheckResultMessage = "이미 등록된 닉네임 입니다.";
				
				member.setMemberNickName(null);
				session.setAttribute("newMember", member);
			}
			
		} else {
			nicknameCheckResultMessage = "공백, 특수 문자(!, @, # 등) 를 제외한 문자만 가능합니다. 최대 14자";

			member.setMemberNickName(null);
			session.setAttribute("newMember", member);
			
			resp.setContentType("application/json"); // JSON 응답으로 설정
	        resp.getWriter().write("{\"nicknameCheckResult\": " + nicknameCheckResult + ", \"nicknameCheckResultMessage\": \"" + nicknameCheckResultMessage + "\"}");
	        
			return null;
		}

        // 응답 설정        
		resp.setContentType("application/json"); // JSON 응답으로 설정
        resp.getWriter().write("{\"nicknameCheckResult\": " + nicknameCheckResult + ", \"nicknameCheckResultMessage\": \"" + nicknameCheckResultMessage + "\"}");
        
		return null;
	}

}
