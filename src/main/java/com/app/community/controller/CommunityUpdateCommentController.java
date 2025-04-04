package com.app.community.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.CommunityDAO;
import com.app.vo.BoardCommentVO;

public class CommunityUpdateCommentController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		CommunityDAO communityDAO = new CommunityDAO();
		BoardCommentVO boardCommentVO = new BoardCommentVO();
		
		Long memberId = (Long)session.getAttribute("loginId");
		Long commentId = Long.parseLong(req.getParameter("commentId"));
		Long postId = Long.parseLong(req.getParameter("postId"));
		String textVal = req.getParameter("textVal");
		
		boardCommentVO.setBoardCommentContent(textVal);
		boardCommentVO.setId(commentId);
		boardCommentVO.setMemberId(memberId);
		boardCommentVO.setBoardPostId(postId);
		
		communityDAO.updateComment(boardCommentVO);
		
		result.setRedirect(true);
		result.setPath("community-post.community?id=" + postId);
		return result;
	}
}
