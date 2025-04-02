package com.app.member.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.vo.MemberImgVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MemberProfileImageUploadController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		HttpSession session = req.getSession();
		
		String directory = req.getServletContext().getRealPath("/assets/images/profile/");
		MemberImgVO memberImage = (MemberImgVO)session.getAttribute("newMemberImage");
		
		int sizeLimit = 30 * 1024 * 1024; // 300mb
		
		File dir = new File(directory);
		
//		폴더가 없다면 만든다.
		if(!dir.exists()) {
			dir.mkdirs();
		}
		
		String newFileName = memberImage.getMemberImgName();
		File newFile = new File(directory, newFileName);
		
		if(newFile.exists()) {
			newFile.delete();
		}
		
		MultipartRequest multi = new MultipartRequest(req, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
		String originFileName = multi.getFilesystemName("imageInput");
		
		File oldFile = new File(directory, originFileName);
		
		if (oldFile.exists()) {
		    oldFile.renameTo(newFile);
		}
		
		session.setAttribute("newMemberImage", memberImage);
		req.setAttribute("newMemberImage", memberImage);
		
		return null;
	}

}
