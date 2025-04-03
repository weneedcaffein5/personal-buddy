package com.app.community.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.CommunityDAO;
import com.app.dto.BoardViewDTO;

public class CommunitySortController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String sort = req.getParameter("sort");
        String hashtag = req.getParameter("hashtag");

        if (sort == null || sort.isBlank()) sort = "latest";
        

        CommunityDAO communityDAO = new CommunityDAO();
        List<BoardViewDTO> posts;

        switch (sort) {
        case "likes":
            posts = communityDAO.sortByLikesAndHashtag(hashtag);
            break;
        case "views":
            posts = communityDAO.sortByViewsAndHashtag(hashtag);
            break;
        case "latest":
        default:
            posts = communityDAO.sortByLatestAndHashtag(hashtag);
            break;
        }

        req.setAttribute("postList", posts);
        
        

        try {
            req.getRequestDispatcher("partial-post-list.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null; // fetch에서 받아서 처리하니까 return 없음
    }
}
