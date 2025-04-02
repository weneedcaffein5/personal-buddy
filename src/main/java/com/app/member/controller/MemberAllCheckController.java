package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.vo.MemberVO;

public class MemberAllCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("newMember");
		
		boolean allCheckResult = true;
		
		if(member.getMemberEmail() == null || member.getMemberEmail() == "") {
			allCheckResult = false;
			resp.setContentType("application/json"); // JSON 응답으로 설정
			resp.getWriter().write("{\"allCheckResult\": " + allCheckResult + "}");
			return null;
		}
		
		if(member.getMemberPassword() == null || member.getMemberPassword() == "") {
			allCheckResult = false;
			resp.setContentType("application/json"); // JSON 응답으로 설정
	        resp.getWriter().write("{\"allCheckResult\": " + allCheckResult + "}");
			return null;
		}
		
		if(member.getMemberName() == null || member.getMemberName() == "") {
			allCheckResult = false;
			resp.setContentType("application/json"); // JSON 응답으로 설정
			resp.getWriter().write("{\"allCheckResult\": " + allCheckResult + "}");
			return null;
		}

		if(member.getMemberGender() == null || member.getMemberGender() == "") {
			allCheckResult = false;
			resp.setContentType("application/json"); // JSON 응답으로 설정
			resp.getWriter().write("{\"allCheckResult\": " + allCheckResult + "}");
			return null;
		}
		
		if(member.getMemberBirth() == null) {
			allCheckResult = false;
			resp.setContentType("application/json"); // JSON 응답으로 설정
			resp.getWriter().write("{\"allCheckResult\": " + allCheckResult + "}");
			return null;
		}

		if(member.getMemberPhone() == null) {
			allCheckResult = false;
			resp.setContentType("application/json"); // JSON 응답으로 설정
			resp.getWriter().write("{\"allCheckResult\": " + allCheckResult + "}");
			return null;
		}
		
		allCheckResult = true;
		resp.setContentType("application/json"); // JSON 응답으로 설정
		resp.getWriter().write("{\"allCheckResult\": " + allCheckResult + "}");
		return null;
	}

}
