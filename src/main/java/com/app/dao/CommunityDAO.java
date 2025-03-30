package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class CommunityDAO {
	public SqlSession sqlSession;
	
	public CommunityDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	검색 (타이틀만)
	
//	정렬 
	
//	필터링(해시태그)
	
	
//	게시글 추가
	
//	댓글 추가
	
//	게시글 수정
	
//	댓글 수정
	
//	게시글 삭제
	
//	댓글 삭제
}
