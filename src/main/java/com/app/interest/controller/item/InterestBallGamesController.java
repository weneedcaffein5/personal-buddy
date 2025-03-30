package com.app.interest.controller.item;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class InterestBallGamesController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		int mainCategoryLength = (int)session.getAttribute("mainCategoryLength");
		String[] subCategoryBallGames = req.getParameter("sub-category-ball-games").split(",");
		String subCategory = "";
		
		for (int i = 0; i < subCategoryBallGames.length; i++) {
			subCategoryBallGames[i] = "구기 종목" + "/" + subCategoryBallGames[i];
			subCategory += subCategoryBallGames[i] + ",";
		}
		
		System.out.println(subCategory);
		
		session.setAttribute("subCategory", req.getParameter("sub-category-ball-games"));
		session.setAttribute("mainCategoryLength", mainCategoryLength - 1);
		
		if (mainCategoryLength == -1) {
			result.setPath("interest-insert.interest");
			return result;
		} else {
			result.setPath("interest-sub-category.interest");
			return result;
		}
	}
}
