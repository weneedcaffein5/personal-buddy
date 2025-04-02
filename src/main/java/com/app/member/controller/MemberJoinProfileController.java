package com.app.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberImgVO;
import com.app.vo.MemberVO;

public class MemberJoinProfileController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		
		HttpSession session = req.getSession();
		MemberDAO memberDAO = new MemberDAO();
		
		Long nextId = memberDAO.selectNextId();
		
		MemberVO member = (MemberVO)session.getAttribute("newMember");
		
		member.setId(nextId);
		if(member.getMemberComment() == null) {
			member.setMemberComment("");
		}
		
		MemberImgVO memberImage = new MemberImgVO();
		
		memberImage.setMemberId(nextId);
		memberImage.setMemberImgPath("/assets/images/profile/");
		memberImage.setMemberImgName(String.valueOf(member.getId()) + "_" + member.getMemberName() + "_Profile.png");
		
		session.setAttribute("newMember", member);
		session.setAttribute("newMemberImage", memberImage);
		
		req.setAttribute("newMember", member);
		req.setAttribute("newMemberImage", memberImage);
		
		result.setPath("join-profile.jsp");
		return result;
	}

}
