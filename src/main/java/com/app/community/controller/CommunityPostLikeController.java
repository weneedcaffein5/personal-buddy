package com.app.community.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.CommunityDAO;
import com.app.vo.BoardLikeVO;

public class CommunityPostLikeController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		BoardLikeVO boardLikeVO = new BoardLikeVO();
		CommunityDAO communityDAO = new CommunityDAO();
		
		Long userId = (Long)session.getAttribute("loginId");
		Long postId = Long.parseLong(req.getParameter("postId"));
		
		boardLikeVO.setBoardPostId(postId);
		boardLikeVO.setMemberId(userId);
		
		
		if (communityDAO.selectPostLike(boardLikeVO) == null) {
			communityDAO.insertLike(boardLikeVO);
			result.setRedirect(true);
			result.setPath("community-post.community?id=" + postId);
			return result;
		} else {
			result.setPath("community-post.community?id=" + postId);
			return result;
		}
		
	}
	
}
