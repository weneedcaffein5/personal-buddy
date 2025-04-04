package com.app.mypage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.app.Action;
import com.app.Result;
import com.app.dao.GuestCommentDAO;
import com.app.dto.GuestCommentViewDTO;

public class MyPageMyTreeController implements Action {

	
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		GuestCommentDAO guestCommentDAO = new GuestCommentDAO();
		
		List<GuestCommentViewDTO> guestComments = guestCommentDAO.selectAllGuestComments();
        req.setAttribute("guestComments", guestComments);

		result.setPath("mypage-mytree.jsp");
		
		return result;
	}

}
