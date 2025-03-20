package com.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.member.controller.MemberJoinAgreeController;
import com.app.member.controller.MemberJoinProfileController;
import com.app.member.controller.MemberJoinWriteController;
import com.app.member.controller.MemberLoginController;
import com.app.member.controller.MemberLoginOkController;

public class MemberFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8;");
		
		String controllerName = "/member/";
		
		String target = req.getRequestURI().replace(req.getContextPath() + controllerName, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("join-agree")) {
			result = new MemberJoinAgreeController().execute(req, resp);
		}else if(target.equals("join-write")) {
			result = new MemberJoinWriteController().execute(req, resp);
		}else if(target.equals("join-mail-check")) {
			result = new MemberJoinWriteController().execute(req, resp);
		}
		else if(target.equals("join-profile")) {
			result = new MemberJoinProfileController().execute(req, resp);
		}else if(target.equals("login")) {
			result = new MemberLoginController().execute(req, resp);
		}else if(target.equals("login-ok")) {
			result = new MemberLoginOkController().execute(req, resp);
		}else if(target.equals("find-id")) {
			
		}else if(target.equals("find-id-ok")) {
			
		}else if(target.equals("find-password")) {
			
		}else if(target.equals("find-password-ok")) {
			
		}else {
//			전부 404
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
