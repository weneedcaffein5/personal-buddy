package com.app.community.controller;

import java.io.IOException;
import java.util.ArrayList;
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
		CommunityDAO communityDAO = new CommunityDAO();

		String sort = req.getParameter("sort");
		if (sort == null || sort.trim().isEmpty()) {
		    sort = "latest";
		}

		List<BoardViewDTO> posts = new ArrayList<>();

		switch (sort) {
		    case "like":
		        posts = communityDAO.sortByLikes();
		        break;
		    case "view":
		        posts = communityDAO.sortByViews();
		        break;
		    case "latest":
		    default:
		        posts = communityDAO.selectAllBoardPost();
		}

		req.setAttribute("posts", posts);
		req.setAttribute("selectedSort", sort); // 선택된 정렬 상태 유지용

		Result result = new Result();
		result.setPath("community-main.jsp");
		return result;
	}

}
