package com.app.mypage.controller;

import java.io.IOException;
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
        System.out.println("성공");
        HttpSession session = req.getSession();
        String email = (String) session.getAttribute("userEmail");

		/*
		 * // 임시 이메일 설정 (개발용) if (email == null) { email = "wlsud94@naver.com";
		 * session.setAttribute("userEmail", email); }
		 */
        // DAO 준비
        MemberDAO memberDAO = new MemberDAO();
        Optional<MemberVO> memberVO = memberDAO.selectByEmail(email);
        System.out.println(email);
        // 요청 구분: check or change
        String mode = req.getParameter("mode");
        
        System.out.println(mode);
        if (mode == null) {
            Result result = new Result();
            result.setPath("mypage-Infokkk.jsp");
            result.setRedirect(false);
            return result;
        }
        
        //  비밀번호 확인
        if ("check".equals(mode)) {
            String inputPassword = req.getParameter("password");

            if (memberVO.isPresent() && memberVO.get().getMemberPassword().equals(inputPassword)) {
                resp.getWriter().write("{\"result\":\"success\"}");
            } else {
                resp.getWriter().write("{\"result\":\"fail\"}");
            }
        }

        //  비밀번호 변경
        if ("change".equals(mode)) {
            String newPassword = req.getParameter("newPassword");

            if (memberVO.isPresent()) {
                MemberVO member = memberVO.get();
                member.setMemberPassword(newPassword);
                memberDAO.updatePassword(member);

                resp.getWriter().write("{\"result\":\"success\"}");
            } else {
                resp.getWriter().write("{\"result\":\"fail\"}");
            }
        }

        return null;
    }
}