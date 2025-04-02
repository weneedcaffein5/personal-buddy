package com.app.event.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.EventDAO;
import com.app.dto.EventViewDTO;

public class EventMainController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		EventDAO eventDAO = new EventDAO();
		List<EventViewDTO> events = eventDAO.eventList();
		
		Timestamp currentTimestamp = Timestamp.valueOf(LocalDateTime.now());
		List<Boolean> onEvent = new ArrayList<Boolean>();
//		events.forEach(System.out::println);
//		System.out.println(currentTimestamp);
		
		events.forEach((event) -> {
			if (event.getEventStartDate().getTime() <= currentTimestamp.getTime()) {
				onEvent.add(true);
			}else {
				onEvent.add(false);
			}
		});
		
//		onEvent.forEach(System.out::println);
		
		req.setAttribute("events", events);
		req.setAttribute("onEvent", onEvent);
		
		result.setPath("event-main.jsp");
		return result;
	}
}
