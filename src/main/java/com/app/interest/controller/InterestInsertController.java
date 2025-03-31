package com.app.interest.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.InterestDAO;
import com.app.vo.InterestVO;

public class InterestInsertController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		InterestDAO interestDAO = new InterestDAO();
		InterestVO interestVO = new InterestVO();
		
		if (session.getAttribute("sub-category-ball-games") != null) {
			System.out.println(session.getAttribute("sub-category-ball-games"));
		}
		if (session.getAttribute("sub-category-fashion") != null) {
			System.out.println(session.getAttribute("sub-category-fashion"));
		}
		if (session.getAttribute("sub-category-food") != null) {
			System.out.println(session.getAttribute("sub-category-food"));
		}
		if (session.getAttribute("sub-category-movie") != null) {
			System.out.println(session.getAttribute("sub-category-movie"));
		}
		if (session.getAttribute("sub-category-music") != null) {
			System.out.println(session.getAttribute("sub-category-music"));
		}
		if (session.getAttribute("sub-category-musical-instrument") != null) {
			System.out.println(session.getAttribute("sub-category-musical-instrument"));
		}
		if (session.getAttribute("sub-category-reading") != null) {
			System.out.println(session.getAttribute("sub-category-reading"));
		}
		if (session.getAttribute("sub-category-sports") != null) {
			System.out.println(session.getAttribute("sub-category-sports"));
		}
		if (session.getAttribute("sub-category-travel") != null) {
			System.out.println(session.getAttribute("sub-category-travel"));
		}
		
		result.setRedirect(true);
		result.setPath("../main/main.jsp");
		return result;
	}
}
