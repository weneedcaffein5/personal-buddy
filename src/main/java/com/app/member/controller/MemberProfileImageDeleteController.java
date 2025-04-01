package com.app.member.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.vo.MemberImgVO;

public class MemberProfileImageDeleteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		HttpSession session = req.getSession();
		
		String directory = req.getServletContext().getRealPath("/assets/images/profile/");
		MemberImgVO memberImage = (MemberImgVO)session.getAttribute("newMemberImage");
		
		File deleteFile = new File(directory, memberImage.getMemberImgName());
		
		if(deleteFile.exists()) {
			deleteFile.delete();
		}
		
		return null;
	}

}
