package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class PointDAO {
	public SqlSession sqlSession;
	
	public PointDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// 포인트 읽기
	public int memberPoint(Long id) {
		return sqlSession.selectOne("point.memberPoint");
	}
	
	// 구매 시 포인트 차감 (CU)

	// 업적 달성 시 포인트 추가 (CU)
	
	// 이벤트 달성 시 포인트 추가 (CU)
	
	// 목표 달성 시 포인트 추가 (CU)
	
}
