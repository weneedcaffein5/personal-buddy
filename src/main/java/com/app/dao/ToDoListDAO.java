package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class ToDoListDAO {
	public SqlSession sqlSession;
	
	public ToDoListDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// ToDO 조회 / 추가 / 수정 / 삭제 (CRUD)
	
}
