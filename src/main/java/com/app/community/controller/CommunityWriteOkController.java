package com.app.community.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.CommunityDAO;
import com.app.vo.BoardImgVO;
import com.app.vo.BoardPostVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CommunityWriteOkController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Result result = new Result();
        
        System.out.println("진입성공");
        // 1. 이미지 업로드 설정
        String filePath = "/assets/images/community";
        String directory = req.getServletContext().getRealPath(filePath);
        int sizeLimit = 30 * 1024 * 1024; // 최대 30MB

        File uploadDir = new File(directory);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        MultipartRequest multi = new MultipartRequest(
            req,
            directory,
            sizeLimit,
            "UTF-8",
            new DefaultFileRenamePolicy()
        );

        // 2. 파라미터 꺼내기
        String title = multi.getParameter("boardTitle");
        String category = multi.getParameter("boardHashtag");
        String content = multi.getParameter("boardContent");
        String uploadFileName = multi.getFilesystemName("uploadFile"); // input name="uploadFile"
        CommunityDAO communityDAO = new CommunityDAO();

        // 3. 세션에서 유저 ID 가져오기
        HttpSession session = req.getSession();
        Long memberId = (Long) session.getAttribute("loginId");
        Long postId = communityDAO.getNextPostId();
        // 4. 게시글 등록
        BoardPostVO postVO = new BoardPostVO();
        postVO.setId(postId);
        postVO.setBoardTitle(title);
        postVO.setBoardContent(content);
        postVO.setBoardHashtag(category);
        postVO.setMemberId(memberId);

        communityDAO.insertPost(postVO);

       
        

        // 6. 이미지가 있으면 이미지 정보도 저장
        if (uploadFileName != null) {
            BoardImgVO imgVO = new BoardImgVO();
            imgVO.setBoardPostId(postId);
            imgVO.setBoardImgName(uploadFileName);
            imgVO.setBoardImgPath(filePath); // 웹 접근 경로로 저장

            communityDAO.insertImg(imgVO);
        }

        // 7. 완료 후 리다이렉트
        result.setRedirect(true);
        result.setPath(req.getContextPath() + "/community/community-main.community");
        return result;
    }
}