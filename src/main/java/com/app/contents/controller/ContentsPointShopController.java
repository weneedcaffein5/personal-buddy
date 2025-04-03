package com.app.contents.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.PointDAO;
import com.app.dao.ShopDAO;
import com.app.dto.MemberDTO;
import com.app.vo.ItemVO;
import com.app.vo.MemberVO;

public class ContentsPointShopController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		ShopDAO shopDAO = new ShopDAO();
		List<ItemVO> items = shopDAO.getItemsByType("");
		PointDAO pointDAO = new PointDAO();
		Long id = (Long)session.getAttribute("loginId");
		int memberPoint = pointDAO.memberPoint(id);
		
//		items.forEach(System.out::println);
//		System.out.println(memberPoint);
		
		req.setAttribute("items", items);
		req.setAttribute("memberPoint", memberPoint);
		result.setPath("contents-point-shop.jsp");
		return result;
	}
}
