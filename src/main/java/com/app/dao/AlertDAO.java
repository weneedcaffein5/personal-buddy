package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class AlertDAO {
	public SqlSession sqlSession;
	
	public AlertDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// 알림 추가 / 조회 / 삭제 (CRD)
	
}
