package com.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.member.controller.MemberAllCheckController;
import com.app.member.controller.MemberBirthCheckController;
import com.app.member.controller.MemberGenderSelectController;
import com.app.member.controller.MemberJoinAgreeController;
import com.app.member.controller.MemberJoinProfileController;
import com.app.member.controller.MemberJoinWriteController;
import com.app.member.controller.MemberLoginController;
import com.app.member.controller.MemberLoginOkController;
import com.app.member.controller.MemberMailCheckController;
import com.app.member.controller.MemberNameCheckController;
import com.app.member.controller.MemberPasswordCheckController;
import com.app.member.controller.MemberPhoneCheckController;
import com.app.member.controller.MemberSendMailController;
import com.app.member.controller.MemberSendPhoneAuthController;

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
		}else if(target.equals("send-mail")) {
			result = new MemberSendMailController().execute(req, resp);
		}else if(target.equals("mail-check")) {
			result = new MemberMailCheckController().execute(req, resp);
		}else if(target.equals("password-check")) {
			result = new MemberPasswordCheckController().execute(req, resp);
		}else if(target.equals("name-check")) {
			result = new MemberNameCheckController().execute(req, resp);
		}else if(target.equals("gender-select")) {
			result = new MemberGenderSelectController().execute(req, resp);
		}else if(target.equals("birth-check")) {
			result = new MemberBirthCheckController().execute(req, resp);
		}else if(target.equals("send-phone-auth")) {
			result = new MemberSendPhoneAuthController().execute(req, resp);
		}else if(target.equals("phone-check")) {
			result = new MemberPhoneCheckController().execute(req, resp);
		}else if(target.equals("all-check")) {
			result = new MemberAllCheckController().execute(req, resp);
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
