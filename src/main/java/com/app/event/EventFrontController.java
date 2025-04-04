package com.app.event;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.event.controller.EventMainController;
import com.app.event.controller.EventPostController;

public class EventFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8;");
		
		String controllerName = "/event/";
		
		String target = req.getRequestURI().replace(req.getContextPath() + controllerName, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("event-main")) {
			result = new EventMainController().execute(req, resp);
		}else if(target.equals("event-post")) {
			result = new EventPostController().execute(req, resp);
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