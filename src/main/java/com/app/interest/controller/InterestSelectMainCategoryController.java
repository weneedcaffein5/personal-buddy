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
		int mainCategoryLength = 0;
		
		String mainCategory = req.getParameter("mainCategory");
		String[] mainCategoryArray = mainCategory.split(",");
		mainCategoryLength = mainCategoryArray.length;
		
		session.setAttribute("mainCategoryArray", mainCategoryArray);
		session.setAttribute("mainCategoryLength", mainCategoryLength - 1);
		session.setAttribute("mainCategoryLengthMax", mainCategoryLength - 1);
		
		result.setPath("interest-sub-category.interest");
		return result;
	}
}
