package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.vo.MemberVO;

public class MemberPasswordCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		HttpSession session = req.getSession();
		
		MemberVO member = (MemberVO)session.getAttribute("newMember");
		String password = req.getParameter("password");
		
		String regex = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[!@#$%^&?]).{8,16}$";
        boolean passwordCheckResult = password != null && password.matches(regex);
        
        if(passwordCheckResult) {
        	member.setMemberPassword(password);
        	session.setAttribute("newMember", member);
        }
        
        // 응답 설정        
        resp.setContentType("application/json; charset=UTF-8");
        resp.getWriter().write("{\"passwordCheckResult\": " + passwordCheckResult + ", \"passwordCheckResultMessage\": \"" +
            (passwordCheckResult ? "※ 사용 가능한 비밀번호입니다." : "※ 비밀번호는 8~16자의 영문 대/소문자, 숫자, 특수문자 (!, @, #, $, %, ^, &, ?) 조합으로 사용해야합니다.") + "\"}");
		
		return null;
	}

}
