package com.app.member.controller;

import java.io.IOException;

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
		String authCode = (String)session.getAttribute("mailAuthCode");
		
		
		return null;
	}

}
