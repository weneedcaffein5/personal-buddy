package com.app.main.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.RecommendDAO;
import com.app.dto.MemberProfileDTO;
import com.app.dto.RecommendDTO;

public class MainMainController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		
		HttpSession session = req.getSession();
		MemberDAO memberDAO = new MemberDAO();
		MemberProfileDTO memberProfileDTO = new MemberProfileDTO();
//		System.out.println("로그인 아이디: " + session.getAttribute("loginId"));
		Long loginId = (Long)session.getAttribute("loginId");
		
		if(loginId != null) {
			memberProfileDTO = memberDAO.selectMemberProfileById(loginId).orElseThrow(RuntimeException::new);
			session.setAttribute("loginId", loginId);
			session.setAttribute("loginProfile", memberProfileDTO);
		}
		
		RecommendDAO recommendDAO = new RecommendDAO();
		List<RecommendDTO> recommendList = recommendDAO.selectByMemberId(loginId);
		
		System.out.println(recommendList);
		
		// 맛집탐방
		/* 카테고리만 필터링해서 4개 추출 */
		 List<RecommendDTO> foodList = recommendList.stream()
		 .filter(item -> "맛집 탐방".equals(item.getInterestBig()))
		 .collect(Collectors.toList());
		  
		  Collections.shuffle(foodList); 
		  foodList = foodList.stream().limit(4).collect(Collectors.toList());
		 
		req.setAttribute("foodList", foodList);
		
		
		// 장소 추천
		List<RecommendDTO> placeList = recommendList.stream()
		    .filter(item -> "장소 추천".equals(item.getInterestBig()))
		    .collect(Collectors.toList());

		Collections.shuffle(placeList);
		placeList = placeList.stream().limit(4).collect(Collectors.toList());
		req.setAttribute("placeList", placeList);
		
		result.setPath("main.jsp");
		return result;
	}
}
