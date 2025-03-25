package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.vo.MemberVO;

public class MemberNameCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		HttpSession session = req.getSession();
		
		MemberVO member = (MemberVO)session.getAttribute("newMember");
		String name = req.getParameter("name");
		boolean nameCheckResult = name != "";
		
		if(nameCheckResult) {
			member.setMemberName(name);
	    	session.setAttribute("newMember", member);
		}
    	
        // 응답 설정        
        resp.setContentType("application/json; charset=UTF-8");
        resp.getWriter().write("{\"nameCheckResult\": " + nameCheckResult + "}");
        
		return null;
	}

}
