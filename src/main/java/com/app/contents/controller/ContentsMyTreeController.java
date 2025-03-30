package com.app.contents.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.TreeDAO;
import com.app.dto.TreeViewDTO;

public class ContentsMyTreeController implements Action{
    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        if (session.getAttribute("userId") == null) {
            session.setAttribute("userId", 1L);
        }
        
        String selectedTreeId = req.getParameter("selectedTreeId");
        String userId = String.valueOf(req.getSession().getAttribute("userId"));
        
        if (selectedTreeId != null) {
            TreeViewDTO treeViewDTO = new TreeViewDTO();
            treeViewDTO.setMemberId(Long.parseLong(userId));
            treeViewDTO.setTreeId(Long.parseLong(selectedTreeId));

            TreeDAO treeDAO = new TreeDAO();
            treeDAO.updateUserTree(treeViewDTO); 
        }
        
        TreeViewDTO myTree = treeDAO.selectUserTree(Long.parseLong(userId));
        req.setAttribute("currentTreeId", myTree.getTreeId());
        
        Result result = new Result();
        result.setPath("contents-mytree.jsp");
        result.setRedirect(false);
        return result;
    }
}
