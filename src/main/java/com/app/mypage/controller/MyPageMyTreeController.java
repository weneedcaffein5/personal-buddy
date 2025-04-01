package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.app.Action;
import com.app.Result;
import com.app.dao.TreeDAO;
import com.app.dto.TreeViewDTO;

public class MyPageMyTreeController implements Action {

	
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		TreeDAO treeDAO = new TreeDAO();
		HttpSession session = req.getSession();
		session.setAttribute("memberId", 1L);
		Long memberId = (Long) session.getAttribute("memberId");
		TreeViewDTO userTree = treeDAO.selectUserTree(memberId);
		
		if (memberId == null) { resp.sendRedirect("login.jsp"); return null; }
		 
		if (userTree == null) {
	        System.out.println("❌ userTree is null");
	    } else {
	        System.out.println("✅ userTree: " + userTree);
	        System.out.println("🧩 itemImgName: " + userTree.getItemImgName());
	        System.out.println("📍 position: (" + userTree.getPositionX() + ", " + userTree.getPositionY() + ")");
	    }

        req.setAttribute("userTree", userTree);    
		
		result.setPath("mypage-mytree.jsp");
		
		return result;
	}

}
