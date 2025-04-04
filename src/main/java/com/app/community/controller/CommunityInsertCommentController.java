package com.app.community.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.CommunityDAO;
import com.app.dto.BoardCommentViewDTO;
import com.app.vo.BoardCommentVO;

public class CommunityInsertCommentController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		Long userId = (Long)session.getAttribute("loginId");
		Long postId = Long.parseLong(req.getParameter("postId"));
		String commentInput = req.getParameter("boardCommentContent");
		CommunityDAO communityDAO = new CommunityDAO();
		BoardCommentVO boardCommentVO = new BoardCommentVO();
		
		boardCommentVO.setBoardCommentContent(commentInput);
		boardCommentVO.setBoardPostId(postId);
		boardCommentVO.setMemberId(userId);
		
		communityDAO.insertPostComment(boardCommentVO);
		
		result.setRedirect(true);
		result.setPath("community-post.community?id=" + postId);
		return result;
	}
}
