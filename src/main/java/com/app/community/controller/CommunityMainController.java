package com.app.community.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.CommunityDAO;
import com.app.dto.BoardViewDTO;

public class CommunityMainController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		CommunityDAO communityDAO = new CommunityDAO();
		List<BoardViewDTO> boardList = communityDAO.selectAllBoardPost();
        req.setAttribute("boardList", boardList);
		
		result.setPath("community-main.jsp");
		
		return result;
	}

}
