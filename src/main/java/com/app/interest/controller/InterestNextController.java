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

//		메인 카테고리의 현재 인덱스값과 인덱스의 최대값을 세션에서 받기
		int mainCategoryIndex = (int)session.getAttribute("mainCategoryIndex");
		int mainCategoryIndexMax = (int)session.getAttribute("mainCategoryIndexMax");
		
		System.out.println(mainCategoryIndex + " / 현재 인덱스");

//		jsp에서 보낸 값이 있으면, 해당하는 세션에 파라미터값을 넣고, 인덱스값을 이동(1+)
		if (req.getParameter("sub-category-ball-games") != null) {
			session.setAttribute("sub-category-ball-games", req.getParameter("sub-category-ball-games"));
			System.out.println(req.getParameter("sub-category-ball-games") + " / 구기 종목 값");
		}
		if (req.getParameter("sub-category-fashion") != null) {
			session.setAttribute("sub-category-fashion", req.getParameter("sub-category-fashion"));
			System.out.println(req.getParameter("sub-category-fashion") + " / 패션 값");
		}
		if (req.getParameter("sub-category-food") != null) {
			session.setAttribute("sub-category-food", req.getParameter("sub-category-food"));
			System.out.println(req.getParameter("sub-category-food") + " / 맛집 탐방 값");
		}
		if (req.getParameter("sub-category-movie") != null) {
			session.setAttribute("sub-category-movie", req.getParameter("sub-category-movie"));
			System.out.println(req.getParameter("sub-category-movie") + " / 영화 감상 값");
		}
		if (req.getParameter("sub-category-music") != null) {
			session.setAttribute("sub-category-music", req.getParameter("sub-category-music"));
			System.out.println(req.getParameter("sub-category-music") + " / 음악 감상 값");
		}
		if (req.getParameter("sub-category-musical-instrument") != null) {
			session.setAttribute("sub-category-musical-instrument", req.getParameter("sub-category-musical-instrument"));
			System.out.println(req.getParameter("sub-category-musical-instrument") + " / 연주 값");
		}
		if (req.getParameter("sub-category-reading") != null) {
			session.setAttribute("sub-category-reading", req.getParameter("sub-category-reading"));
			System.out.println(req.getParameter("sub-category-reading") + " / 읽기 값");
		}
		if (req.getParameter("sub-category-sports") != null) {
			session.setAttribute("sub-category-sports", req.getParameter("sub-category-sports"));
			System.out.println(req.getParameter("sub-category-sports") + " / 운동 값");
		}
		if (req.getParameter("sub-category-travel") != null) {
			session.setAttribute("sub-category-travel", req.getParameter("sub-category-travel"));
			System.out.println(req.getParameter("sub-category-travel") + " / 여행 값");
		}
		
		mainCategoryIndex++;
		System.out.println(mainCategoryIndex + " / 현재 인덱스2");
		
		session.setAttribute("mainCategoryIndex", mainCategoryIndex);
		
//		인덱스값이 아직 범위 내라면, 다음 서브 카테고리를 선택하러 이동
		result.setPath("interest-sub-category.interest");
		return result;
	}
}
