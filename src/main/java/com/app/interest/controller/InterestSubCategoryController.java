package com.app.interest.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class InterestSubCategoryController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		
		String[] mainCategory = (String[])session.getAttribute("mainCategory");
		int categoryIndex = mainCategory.length;
		
		
		
		result.setPath("../main/main.jsp");
		return result;
	}
}
