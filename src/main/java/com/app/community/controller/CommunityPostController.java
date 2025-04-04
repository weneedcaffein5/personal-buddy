package com.app.community.controller;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.CommunityDAO;
import com.app.dao.MemberDAO;
import com.app.dto.BoardCommentViewDTO;
import com.app.dto.BoardPostViewDTO;
import com.app.dto.MemberProfileDTO;
import com.app.vo.BoardImgVO;
import com.app.vo.BoardLikeVO;

public class CommunityPostController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		CommunityDAO communityDAO = new CommunityDAO();
		BoardPostViewDTO boardPostViewDTO = new BoardPostViewDTO();
		MemberDAO memberDAO = new MemberDAO();
		BoardLikeVO boardLikeVO = new BoardLikeVO();
		Long postId = Long.parseLong(req.getParameter("id"));
		Long userId = ((Long)session.getAttribute("loginId"));
		List<BoardImgVO> postImgs = communityDAO.readPostImg(postId);
		List<BoardCommentViewDTO> comments = communityDAO.selectCommentList(postId);
		
		
		boardPostViewDTO = communityDAO.readPost(postId);
		boardLikeVO.setMemberId(userId);
		boardLikeVO.setBoardPostId(postId);
		
		BoardLikeVO userLike = communityDAO.selectPostLike(boardLikeVO);
		
//		postImgs.forEach(System.out::println);
//		System.out.println(boardPostViewDTO);
//		System.out.println(userLike);
		comments.forEach(System.out::println);
		
		req.setAttribute("comments", comments);
		req.setAttribute("userLike", userLike);
		req.setAttribute("postImgs", postImgs);
		req.setAttribute("boardPostViewDTO", boardPostViewDTO);
		result.setPath("community-post.jsp");
		return result;
	}

}
