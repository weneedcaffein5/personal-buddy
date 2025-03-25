package com.app.introduce;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.introduce.controller.IntroduceController;

public class IntroduceFrontController extends HttpServlet{

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	super.doGet(req, resp);
	req.setCharacterEncoding("UTF-8");
	resp.setContentType("text/html; charset=utf-8;");
	
	String controllerName = "/introduce/";
	
	String target = req.getRequestURI().replace(req.getContextPath() + controllerName, "").split("\\.")[0];
	Result result = null;
	
	if(target.equals("introduce")) {
		result = new IntroduceController().execute(req, resp);
	}else {
//		전부 404
	}
	
	if(result != null) {
		if(result.isRedirect()) {
			resp.sendRedirect(result.getPath());
		}else {
			req.getRequestDispatcher(result.getPath()).forward(req, resp);
		}
	}
	
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}