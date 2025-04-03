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

		// 최초 진입 시 최신순으로 불러오기
        List<BoardViewDTO> posts = communityDAO.sortByLatestAndHashtag(null);
        req.setAttribute("postList", posts);
        req.setAttribute("selectedSort", "latest"); // 현재 정렬 방식 (JSP에서 active 표시용)

        Result result = new Result();
        result.setPath("community-main.jsp");
        return result;
    }

}
