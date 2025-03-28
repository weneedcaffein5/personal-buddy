package com.app.interest.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class InterestCategoryMainController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
//		자 생각을 해보자? 배열로 메인 카테고리를 받고 세션에 저장을 해? 불러와서 if else문으로 해당하는 카테고리가 있으면 해당 
//		jsp폴더로 가서 또 파라미터값을 받아와서 세션에 저장해 마지막에는 항상 공백&null값인데 그게 찍히면 main으로 보내!!
		
		Result result = new Result();
		
//		카테고리 대분류로 불러와서 자르고 문자배열 
		String mainCategory = req.getParameter("mainCategory");
		
//		System.out.println(req.getParameter("mainCategory"));
//		for (int i = 0; i < mainCategory.length; i++) {
//			System.out.println(mainCategory[i]);
//		}

		result.setPath("interest-category-sub.interest?=" + mainCategory);
		return result;
	}

}
