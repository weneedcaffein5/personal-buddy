package com.app.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.community.controller.CommunityMainController;
import com.app.community.controller.CommunitySortController;
import com.app.community.controller.CommunityWriteController;
import com.app.community.controller.CommunityWriteOkController;


public class CommunityFrontController extends HttpServlet{

   
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      resp.setContentType("text/html; charset=utf-8;");
      
      String controllerName = "/community/";
      
      String target = req.getRequestURI().replace(req.getContextPath() + controllerName, "").split("\\.")[0];
      Result result = null;
      
        if (target.equals("community-main")) {
               result = new CommunityMainController().execute(req, resp);
           } else if (target.equals("community-sort")) {
               result = new CommunitySortController().execute(req, resp);
           } else if (target.equals("write")) {
        	   result = new CommunityWriteController().execute(req, resp);
           } else if (target.equals("writeOk")) {
               result = new CommunityWriteOkController ().execute(req, resp);
           } else {
               // 404나 기본 처리 등 추가 가능
               System.out.println("해당 컨트롤러를 찾을 수 없습니다: " + target);
           }
      
      if(result != null) {
         if(result.isRedirect()) {
            resp.sendRedirect(result.getPath());
         }else {
            req.getRequestDispatcher(result.getPath()).forward(req, resp);
         }
      }
   }


   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doGet(req, resp);
   }
}