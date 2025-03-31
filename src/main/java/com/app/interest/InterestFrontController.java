package com.app.interest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.interest.controller.InterestBackController;
import com.app.interest.controller.InterestMainCategoryController;
import com.app.interest.controller.InterestSelectMainCategoryController;
import com.app.interest.controller.InterestSubCategoryController;
import com.app.interest.controller.InterestMainController;
import com.app.interest.controller.InterestNextController;

public class InterestFrontController extends HttpServlet {
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8;");
		
		String controllerName = "/interest/";
		
		String target = req.getRequestURI().replace(req.getContextPath() + controllerName, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("interest-main")) {
//			설문조사 메인 페이지로 이동
			result = new InterestMainController().execute(req, resp);
		}else if(target.equals("interest-main-category")) {
//			설문조사 메인 카테고리 페이지로 이동
			result = new InterestMainCategoryController().execute(req, resp);
		}else if(target.equals("interest-select-main-category")) {
//			메인 카테고리값을 받고 세션에 저장 -> 서브 카테고리로 이동
			result = new InterestSelectMainCategoryController().execute(req, resp);
		}else if(target.equals("interest-sub-category")) {
//			세션에 저장된 메인 카테고리값을 기준으로(Array) 해당 서브 카테고리의 jsp파일로 이동
			result = new InterestSubCategoryController().execute(req, resp);
		}else if(target.equals("interest-next")) {
			result = new InterestNextController().execute(req, resp);
//			jsp파일에서 받은 서브 카테고리를 개별로 세션에 저장 후, 인덱스값 변경
		}else if(target.equals("interest-back")) {
//			이전 jsp파일에서 등록된 세션값을 지우고, 이전 jsp 파일로 이동
			result = new InterestBackController().execute(req, resp);
		}else if(target.equals("interest-insert")) {
//			DB에 값 등록
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