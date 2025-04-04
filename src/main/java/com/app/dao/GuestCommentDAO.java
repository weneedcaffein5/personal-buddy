package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.GuestCommentDTO;
import com.app.dto.GuestCommentViewDTO;
import com.app.mybatis.config.MyBatisConfig;

public class GuestCommentDAO {
	public SqlSession sqlSession;
	
	public GuestCommentDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true); 
	}
	
	// 멤버의 방명록 조회
	public List<GuestCommentViewDTO> selectAllGuestComments() {
		return sqlSession.selectList("mypage.selectAllGuestComments");
	}
	
	// 방명록 등록
	public void insertGuestComment(GuestCommentDTO guestCommentDTO) {
		sqlSession.insert("mypage.insertGuestComment", guestCommentDTO);
	}
	
	// 방명록 삭제
	public void deleteGuestComment(Long guestCommentId) {
		sqlSession.delete("mypage.deleteGuestComment", guestCommentId);
	}
}
