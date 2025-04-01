package com.app.interest.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class InterestMainRemoveController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		
		if (session.getAttribute("sub-category-ball-games") != null) {
			session.removeAttribute("sub-category-ball-games");
		}
		if (session.getAttribute("sub-category-fashion") != null) {
			session.removeAttribute("sub-category-fashion");
		}
		if (session.getAttribute("sub-category-food") != null) {
			session.removeAttribute("sub-category-food");
		}
		if (session.getAttribute("sub-category-movie") != null) {
			session.removeAttribute("sub-category-movie");
		}
		if (session.getAttribute("sub-category-music") != null) {
			session.removeAttribute("sub-category-music");
		}
		if (session.getAttribute("sub-category-musical-instrument") != null) {
			session.removeAttribute("sub-category-musical-instrument");
		}
		if (session.getAttribute("sub-category-reading") != null) {
			session.removeAttribute("sub-category-reading");
		}
		if (session.getAttribute("sub-category-sports") != null) {
			session.removeAttribute("sub-category-sports");
		}
		if (session.getAttribute("sub-category-travel") != null) {
			session.removeAttribute("sub-category-travel");
		}
		
		result.setPath("interest-sub-category.interest");
		return result;
	}
}
