package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.GuestCommentDAO;
import com.app.dto.GuestCommentDTO;

public class MyPageMyTreeWriteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		
		HttpSession session = req.getSession();
		Long memberId = (Long)session.getAttribute("loginId");
		String comment = req.getParameter("comment");
		
		if (memberId == null || comment == null || comment.trim().isEmpty()) {
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            return null;
        }
		
		GuestCommentDTO guestCommentDTO = new GuestCommentDTO();
		GuestCommentDAO guestCommentDAO = new GuestCommentDAO();
		
		guestCommentDTO.setMemberId(memberId);
		guestCommentDTO.setDescription(comment.trim());
		
		guestCommentDAO.insertGuestComment(guestCommentDTO);
		
		result.setRedirect(true);
		result.setPath("mypage-mytree.mypage");
		return result;
	}

}
