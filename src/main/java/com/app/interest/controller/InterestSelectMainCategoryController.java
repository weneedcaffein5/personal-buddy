package com.app.interest.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class InterestSelectMainCategoryController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		
//		카테고리 대분류로 불러와서 자르고 문자배열
		String[] mainCategory = req.getParameter("mainCategory").split(",");
		session.setAttribute("mainCategory", mainCategory);
		
		result.setPath("interest-sub-category.interest");
		return result;
	}

}
