package com.app.contents.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.TreeDAO;
import com.app.dto.PurchaseDTO;
import com.app.dto.TreeViewDTO;

public class ContentsMyTreeController implements Action{
    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
    
        Long memberId = (Long) session.getAttribute("loginId");
        System.out.println("회원 ID: " + memberId);
        TreeDAO treeDAO = new TreeDAO();
        
        List<TreeViewDTO> treeAndBgItems = treeDAO.selectOwnedBackgroundAndTreeItems(memberId);
        List<TreeViewDTO> stickerItems = treeDAO.selectOwnedStickerItems(memberId);
        System.out.println("treeAndBgItems: " + treeAndBgItems);
        System.out.println("stickerItems: " + stickerItems);
     // 전체 리스트 통합
		
		List<TreeViewDTO> allItems = new ArrayList<>(); 
		allItems.addAll(treeAndBgItems);
		allItems.addAll(stickerItems);
		 
		for (TreeViewDTO item : allItems) {
		    System.out.println(item);
		}
        // JSP로 넘기기
		req.setAttribute("treeAndBgItems", treeAndBgItems);
		req.setAttribute("stickerItems", stickerItems);
		req.setAttribute("allItems", allItems);
        // JSP에서 사용하기 위해 request에 담기

		treeAndBgItems.forEach(item -> {
		    System.out.println(">>> itemId = " + item.getItemId());
		    System.out.println(">>> itemName = " + item.getItemName());
		    System.out.println(">>> itemCount = " + item.getItemCount());
		});
        Result result = new Result();
        result.setPath("contents-mytree.jsp");
        return result;
    }
}
