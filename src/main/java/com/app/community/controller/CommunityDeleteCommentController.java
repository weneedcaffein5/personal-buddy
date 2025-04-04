package com.app.community.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.CommunityDAO;

public class CommunityDeleteCommentController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		CommunityDAO communityDAO = new CommunityDAO();
		Long commentId = Long.parseLong(req.getParameter("commentId"));
		Long postId = Long.parseLong(req.getParameter("postId"));
		
		communityDAO.deleteComment(commentId);
		
		result.setRedirect(true);
		result.setPath("community-post.community?id=" + postId);
		return result;
	}

}
