package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class ShopDAO {
	public SqlSession sqlSession;
	
	public ShopDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// 장바구니 추가 / 조회 / 수정 / 삭제 (CRUD)
	
	// 아이템 구매 (C)
	
}
