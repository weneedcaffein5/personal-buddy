package com.app.community.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.CommunityDAO;
import com.app.vo.BoardCommentLikeVO;

public class CommunityCommentDeleteController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		BoardCommentLikeVO boardCommentLikeVO = new BoardCommentLikeVO();
		CommunityDAO communityDAO = new CommunityDAO();
		Long memberId = (Long)session.getAttribute("loginId");
		Long commentId = Long.parseLong(req.getParameter("commentId"));
		
		boardCommentLikeVO.setMemberId(memberId);
		boardCommentLikeVO.setBoardCommentId(commentId);
		
		List<BoardCommentLikeVO> commentLikes = communityDAO.checkCommentLike();
		
		commentLikes.forEach(commentLike -> {
			
		});
		
		
		result.setRedirect(true);
		result.setPath("community-post.community");
		return result;
	}
}
