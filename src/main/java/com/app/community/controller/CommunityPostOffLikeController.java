package com.app.community.controller;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.app.Action;
import com.app.Result;
import com.app.dao.CommunityDAO;
import com.app.vo.BoardLikeVO;

public class CommunityPostOffLikeController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		BoardLikeVO boardLikeVO = new BoardLikeVO();
		CommunityDAO communityDAO = new CommunityDAO();
		
		Long boardLikeId = Long.parseLong(req.getParameter("boardLikeId"));
		Long postId = Long.parseLong(req.getParameter("postId"));
		
		
		System.out.println(boardLikeId);
		
		if (communityDAO.selectPostLikeId(boardLikeId) != null) {
			communityDAO.deleteLike(boardLikeId);
			result.setRedirect(true);
			result.setPath("community-post.community?id=" + postId);
			return result;
		} else {
			result.setPath("community-post.community?id=" + postId);
			return result;
		}
	}
}
