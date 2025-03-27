package com.app.interest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.interest.controller.InterestCategoryController;
import com.app.interest.controller.InterestCategoryMainController;
import com.app.interest.controller.InterestCategorySubController;
import com.app.interest.controller.InterestMainController;

public class InterestFrontController extends HttpServlet {
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8;");
		
		String controllerName = "/interest/";
		
		String target = req.getRequestURI().replace(req.getContextPath() + controllerName, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("interest-main")) {
			result = new InterestMainController().execute(req, resp);
		}else if(target.equals("interest-category")) {
			result = new InterestCategoryController().execute(req, resp);
		}else if(target.equals("interest-category-main")) {
			result = new InterestCategoryMainController().execute(req, resp);
		}else if(target.equals("interest-category-sub")) {
			result = new InterestCategorySubController().execute(req, resp);
		}else if(target.equals("interest-category")) {
			
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