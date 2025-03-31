package com.app.contents;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.contents.controller.ContentsAchievementController;
import com.app.contents.controller.ContentsMyTreeController;
import com.app.contents.controller.ContentsPointShopController;


public class ContentsFrontController extends HttpServlet{

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8;");
		
		String controllerName = "/contents/";
		
		String target = req.getRequestURI().replace(req.getContextPath() + controllerName, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("contents-achievement")) {
			result = new ContentsAchievementController().execute(req, resp);
		}else if(target.equals("myTree")) {
			result = new ContentsMyTreeController().execute(req, resp);
		}else if(target.equals("contents-point-shop")) {
			result = new ContentsPointShopController().execute(req, resp);
		}else {
			
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
