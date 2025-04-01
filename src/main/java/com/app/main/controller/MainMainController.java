package com.app.main.controller;

import java.io.IOException;
import java.util.List;

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
			session.setAttribute("memberProfile", memberProfileDTO);
		}
		
		RecommendDAO recommendDAO = new RecommendDAO();
		List<RecommendDTO> recommendList = recommendDAO.selectByMemberId(loginId);
		
		req.setAttribute("recommendList", recommendList);
						
		
		result.setPath("main.jsp");
		return result;
	}

}
