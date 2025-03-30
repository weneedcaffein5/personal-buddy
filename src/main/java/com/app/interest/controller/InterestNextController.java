package com.app.interest.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class InterestNextController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		int mainCategoryLength = (int)session.getAttribute("mainCategoryLength");
		
		try {
			if (!req.getParameter("sub-category-ball-games").equals(null)) {
				session.setAttribute("sub-category-ball-games", req.getParameter("sub-category-ball-games"));
				session.setAttribute("mainCategoryLength", mainCategoryLength - 1);
			}
			if (!req.getParameter("sub-category-fashion").equals(null)) {
				session.setAttribute("sub-category-fashion", req.getParameter("sub-category-fashion"));
				session.setAttribute("mainCategoryLength", mainCategoryLength - 1);
			}
			if (!req.getParameter("sub-category-food").equals(null)) {
				session.setAttribute("sub-category-food", req.getParameter("sub-category-food"));
				session.setAttribute("mainCategoryLength", mainCategoryLength - 1);
			}
			if (!req.getParameter("sub-category-movie").equals(null)) {
				session.setAttribute("sub-category-movie", req.getParameter("sub-category-movie"));
				session.setAttribute("mainCategoryLength", mainCategoryLength - 1);
			}
			if (!req.getParameter("sub-category-music").equals(null)) {
				session.setAttribute("sub-category-music", req.getParameter("sub-category-music"));
				session.setAttribute("mainCategoryLength", mainCategoryLength - 1);
			}
			if (!req.getParameter("sub-category-musical-instrument").equals(null)) {
				session.setAttribute("sub-category-musical-instrument", req.getParameter("sub-category-musical-instrument"));
				session.setAttribute("mainCategoryLength", mainCategoryLength - 1);
			}
			if (!req.getParameter("sub-category-reading").equals(null)) {
				session.setAttribute("sub-category-reading", req.getParameter("sub-category-reading"));
				session.setAttribute("mainCategoryLength", mainCategoryLength - 1);
			}
			if (!req.getParameter("sub-category-sports").equals(null)) {
				session.setAttribute("sub-category-sports", req.getParameter("sub-category-sports"));
				session.setAttribute("mainCategoryLength", mainCategoryLength - 1);
			}
			if (!req.getParameter("sub-category-travel").equals(null)) {
				session.setAttribute("sub-category-travel", req.getParameter("sub-category-travel"));
				session.setAttribute("mainCategoryLength", mainCategoryLength - 1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (mainCategoryLength == -1) {
			result.setPath("interest-insert.interest");
			return result;
		} else {
			result.setPath("interest-sub-category.interest");
			return result;
		}
	}
}
