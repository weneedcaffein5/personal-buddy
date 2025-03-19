package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.vo.MemberVO;

public class MemberJoinWriteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		
		MemberVO member = new MemberVO();
		
		int agreeService = Integer.parseInt(req.getParameter("agreeService"));
		int agreeInformation = Integer.parseInt(req.getParameter("agreeInformation"));
		int agreeLocation = Integer.parseInt(req.getParameter("agreeLocation"));
		
		member.setMemberTermServiceAgree(agreeService);
		member.setMemberTermInformationAgree(agreeInformation);
		member.setMemberTermLocationAgree(agreeLocation);
		
		req.setAttribute("newMember", member);
		result.setPath("join-write.jsp");
		return result;
	}

}
