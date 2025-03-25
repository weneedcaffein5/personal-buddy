package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.vo.MemberImgVO;
import com.app.vo.MemberVO;

public class MemberJoinProfileController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("newMember");
		MemberImgVO memberImage = new MemberImgVO();
		
		session.setAttribute("newMember", member);
		session.setAttribute("newMemberImage", memberImage);
		
		req.setAttribute("newMember", member);
		req.setAttribute("newMemberImage", memberImage);
		
		System.out.println(member);
		result.setPath("join-profile.jsp");
		return result;
	}

}
