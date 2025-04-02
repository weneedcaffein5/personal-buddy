package com.app.mypage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.mypage.controller.MyPageMyAchievement;
import com.app.mypage.controller.MyPageMyTreeController;
import com.app.mypage.controller.MypageInfoController;

public class MyPageFrontController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=utf-8;");

        // ✅ 요청 URI에서 target 추출 (/mypage-info.mypage → mypage-info)
        String target = req.getRequestURI()
                           .replace(req.getContextPath() + "/", "")
                           .split("\\.")[0];

        Result result = null;

        // ✅ target 값으로 분기 처리
        if (target.equals("mypage-info")) {
            result = new MypageInfoController().execute(req, resp);
        } else if (target.equals("mypage-mytree")) {
            result = new MyPageMyTreeController().execute(req, resp);
        } else if (target.equals("mypage-myachievement")) {
            result = new MyPageMyAchievement().execute(req, resp);
        } else {
            // 404나 기본 처리 등 추가 가능
            System.out.println("해당 컨트롤러를 찾을 수 없습니다: " + target);
        }

        // ✅ 포워드/리다이렉트 처리
        if (result != null) {
            if (result.isRedirect()) {
                resp.sendRedirect(result.getPath());
            } else {
                req.getRequestDispatcher(result.getPath()).forward(req, resp);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp); // POST도 GET 방식으로 처리
    }
}
