package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.GuestCommentViewDTO;
import com.app.mybatis.config.MyBatisConfig;

public class GuestCommentDAO {
	public SqlSession sqlSession;
	
	public GuestCommentDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true); 
	}
	
	// 멤버의 방명록 조회
	public List<GuestCommentViewDTO> findByMemberId(Long memberId) {
		return sqlSession.selectList("guestComment.findByMemberId", memberId);
	}
}
