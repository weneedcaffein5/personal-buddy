package com.app.contents.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		ShopDAO shopDAO = new ShopDAO();
		List<ItemVO> itemVO = shopDAO.getItemsByType("");
		PointDAO pointDAO = new PointDAO();
		Long id = (long) 1;
		int memberPoint = pointDAO.memberPoint(id);
		
//		itemVO.forEach(System.out::println);
		
		req.setAttribute("itemVO", itemVO);
		req.setAttribute("memberPoint", memberPoint);
		result.setPath("contents-point-shop.jsp");
		return result;
	}
}
