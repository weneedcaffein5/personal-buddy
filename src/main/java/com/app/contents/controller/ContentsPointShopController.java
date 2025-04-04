package com.app.contents.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.PointDAO;
import com.app.dao.ShopDAO;
import com.app.vo.ItemVO;

public class ContentsPointShopController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		
		ShopDAO shopDAO = new ShopDAO();
		PointDAO pointDAO = new PointDAO();
		
		Long id = (Long)session.getAttribute("loginId");
		int memberPoint = pointDAO.memberPoint(id);
		
		String type = req.getParameter("type");
		List<ItemVO> items = shopDAO.getItemsByType(type);
		
		items.forEach(System.out::println);
		
		req.setAttribute("memberPoint", memberPoint);
		req.setAttribute("items", items);
		
		result.setPath("contents-point-shop.jsp");
		return result;
	}
}
