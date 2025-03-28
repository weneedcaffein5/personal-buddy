package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class CalendarDAO {
	public SqlSession sqlSession;
	
	public CalendarDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// 캘린더 조회 / 추가 / 수정 / 삭제 (CRUD)
	
	// 일정 추가 / 조회 (단일 조회, 일괄 조회) / 수정 / 삭제 (CRUD)
	
}
