package com.app.event.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.EventDAO;
import com.app.dto.EventCommentViewDTO;

public class EventPostController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();		
		
		Long eventId = Long.valueOf(req.getParameter("id"));
		
		EventDAO eventDAO = new EventDAO();
		List<EventCommentViewDTO> eventComments = eventDAO.selectEventComments(eventId);
		
		req.setAttribute("eventComments", eventComments);
		req.setAttribute("eventId", eventComments);
		
		result.setPath("event-post.jsp");
		return result;
	}

}
