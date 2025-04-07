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
		String category = "";
		String[] categoryArray = null;
		Long loginId = (Long)session.getAttribute("loginId");
		
		if (session.getAttribute("sub-category-ball-games") != null) {
			category = (String)session.getAttribute("sub-category-ball-games");
			System.out.println(category);
			categoryArray = category.split(",");
			for (int i = 0; i < categoryArray.length; i++) {
				interestVO.setInterestBig("구기 종목");
				interestVO.setInterestSmall(categoryArray[i]);
				interestVO.setMemberId(loginId);
				System.out.println(interestVO);
				interestDAO.insert(interestVO);
			}
		}
		if (session.getAttribute("sub-category-fashion") != null) {
			category = (String)session.getAttribute("sub-category-fashion");
			System.out.println(category);
			categoryArray = category.split(",");
			for (int i = 0; i < categoryArray.length; i++) {
				interestVO.setInterestBig("패션");
				interestVO.setInterestSmall(categoryArray[i]);
				interestVO.setMemberId(loginId);
				System.out.println(interestVO);
				interestDAO.insert(interestVO);
			}
		}
		if (session.getAttribute("sub-category-food") != null) {
			category = (String)session.getAttribute("sub-category-food");
			System.out.println(category);
			categoryArray = category.split(",");
			for (int i = 0; i < categoryArray.length; i++) {
				interestVO.setInterestBig("맛집 탐방");
				interestVO.setInterestSmall(categoryArray[i]);
				interestVO.setMemberId(loginId);
				System.out.println(interestVO);
				interestDAO.insert(interestVO);
			}
		}
		if (session.getAttribute("sub-category-movie") != null) {
			category = (String)session.getAttribute("sub-category-movie");
			System.out.println(category);
			categoryArray = category.split(",");
			for (int i = 0; i < categoryArray.length; i++) {
				interestVO.setInterestBig("영화 감상");
				interestVO.setInterestSmall(categoryArray[i]);
				interestVO.setMemberId(loginId);
				System.out.println(interestVO);
				interestDAO.insert(interestVO);
			}
		}
		if (session.getAttribute("sub-category-music") != null) {
			category = (String)session.getAttribute("sub-category-music");
			System.out.println(category);
			categoryArray = category.split(",");
			for (int i = 0; i < categoryArray.length; i++) {
				interestVO.setInterestBig("음악 감상");
				interestVO.setInterestSmall(categoryArray[i]);
				interestVO.setMemberId(loginId);
				System.out.println(interestVO);
				interestDAO.insert(interestVO);
			}
		}
		if (session.getAttribute("sub-category-musical-instrument") != null) {
			category = (String)session.getAttribute("sub-category-musical-instrument");
			System.out.println(category);
			categoryArray = category.split(",");
			for (int i = 0; i < categoryArray.length; i++) {
				interestVO.setInterestBig("연주");
				interestVO.setInterestSmall(categoryArray[i]);
				interestVO.setMemberId(loginId);
				System.out.println(interestVO);
				interestDAO.insert(interestVO);
			}
		}
		if (session.getAttribute("sub-category-reading") != null) {
			category = (String)session.getAttribute("sub-category-reading");
			System.out.println(category);
			categoryArray = category.split(",");
			for (int i = 0; i < categoryArray.length; i++) {
				interestVO.setInterestBig("독서");
				interestVO.setInterestSmall(categoryArray[i]);
				interestVO.setMemberId(loginId);
				System.out.println(interestVO);
				interestDAO.insert(interestVO);
			}
		}
		if (session.getAttribute("sub-category-sports") != null) {
			category = (String)session.getAttribute("sub-category-sports");
			System.out.println(category);
			categoryArray = category.split(",");
			for (int i = 0; i < categoryArray.length; i++) {
				interestVO.setInterestBig("운동");
				interestVO.setInterestSmall(categoryArray[i]);
				interestVO.setMemberId(loginId);
				System.out.println(interestVO);
				interestDAO.insert(interestVO);
			}
		}
		if (session.getAttribute("sub-category-travel") != null) {
			category = (String)session.getAttribute("sub-category-travel");
			System.out.println(category);
			categoryArray = category.split(",");
			for (int i = 0; i < categoryArray.length; i++) {
				interestVO.setInterestBig("여행");
				interestVO.setInterestSmall(categoryArray[i]);
				interestVO.setMemberId(loginId);
				System.out.println(interestVO);
				interestDAO.insert(interestVO);
			}
		}
		
		result.setRedirect(true);
		result.setPath("../main/main.main");
		return result;
	}
}
