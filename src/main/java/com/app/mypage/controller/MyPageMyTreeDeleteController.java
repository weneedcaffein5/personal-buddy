package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.GuestCommentDAO;

public class MyPageMyTreeDeleteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Long guestCommentId = Long.valueOf(req.getParameter("guestCommentId"));
        GuestCommentDAO dao = new GuestCommentDAO();
        dao.deleteGuestComment(guestCommentId);

        resp.setStatus(HttpServletResponse.SC_OK); // fetch() 성공으로 알려줌
        return null; // 리다이렉트 불필요 (비동기이므로)
	}

}
