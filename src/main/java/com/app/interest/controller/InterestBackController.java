package com.app.interest.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class InterestBackController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		int mainCategoryLength = (int)session.getAttribute("mainCategoryLength");
		int mainCategoryLengthMax = (int)session.getAttribute("mainCategoryLengthMax");
		
		mainCategoryLength = mainCategoryLength + 1;
		
		session.setAttribute("mainCategoryLength", mainCategoryLength);
		
		if (mainCategoryLength > mainCategoryLengthMax) {
			result.setPath("interest-main-category.interest");
			return result;
		} else {
			result.setPath("interest-sub-category.interest");
			return result;
		}
		
	}

}
