package com.app.mypage.controller;

import java.io.IOException;
import java.lang.reflect.Member;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MypageInfoController implements Action {
    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        
        String inputPassword = req.getParameter("password");
        // 1. 비밀번호를 받아온다.
        HttpSession session = req.getSession();
        String email = (String) session.getAttribute("userEmail");
        
        MemberDAO memberDAO = new MemberDAO();
        Optional<MemberVO> memberVO = memberDAO.selectByEmail(email);
        // 2. 비밀번호를 비교한다.
        // - 1) 멤버 데이터베이스에 이메일로 비밀번호를 가져온다.
        // - 2) dao selecbyemail로 memberVO에 비밀번호를 담는다
        // - 3) req에 담아야하나? 힌트좀
        
        if (memberVO.isPresent()) {
            if (memberVO.get().getMemberPassword().equals(inputPassword)) {
                resp.getWriter().write("{\"result\":\"success\"}");
            } else {
                resp.getWriter().write("{\"result\":\"fail\"}");
            }
        } else {
            resp.getWriter().write("{\"result\":\"fail\"}");
        }
        
        
 
        return null;
        
    }
}