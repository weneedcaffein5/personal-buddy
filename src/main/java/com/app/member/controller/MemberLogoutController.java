package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class MemberLogoutController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		
		HttpSession session = req.getSession();
		
		session.removeAttribute("loginId");
		session.removeAttribute("loginProfile");
		
		result.setRedirect(true);
		result.setPath("login.member");
		return result;
	}

}
