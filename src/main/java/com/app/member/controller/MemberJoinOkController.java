package com.app.member.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberImgVO;
import com.app.vo.MemberVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MemberJoinOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("newMember");
		
		MemberImgVO memberImg = (MemberImgVO)session.getAttribute("newMemberImage");
		String directory = req.getServletContext().getRealPath("/assets/images/profile/");
		int sizeLimit = 30 * 1024 * 1024; // 300mb

		File dir = new File(directory);
		
//		폴더가 없다면 만든다.
		if(!dir.exists()) {
			dir.mkdirs();
		}

		MultipartRequest multi = new MultipartRequest(req, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
		String fileName = multi.getFilesystemName("imageInput");
		
		if(fileName == null) {
			File defaultImage = new File(directory, "profile-default.png");
			File targetFile = new File(directory, memberImg.getMemberImgName());
			
			if (defaultImage.exists() && !targetFile.exists()) {
	            Files.copy(
	                defaultImage.toPath(),
	                targetFile.toPath(),
	                StandardCopyOption.REPLACE_EXISTING
	            );
	        }
		}
		
		String comment = req.getParameter("memberComment");
		
		if(comment == null)
		{
			comment = "";
		}
		member.setMemberComment(comment);
		MemberDAO memberDAO = new MemberDAO();
		
		System.out.println(memberImg);
		memberDAO.insert(member);
		memberDAO.insertImg(memberImg);
		
		result.setRedirect(true);
		result.setPath("interest-main.interest");
		return result;
	}

}
