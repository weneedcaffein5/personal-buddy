package com.app.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.ItemVO;

public class ShopDAO {
	public SqlSession sqlSession;
	
	public ShopDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// 아이템 타입 조회
	public List<ItemVO> getItemsByType(String itemType) {
	    return sqlSession.selectList("contents.getItemsByType", itemType);
	}
	
	// 장바구니 추가 / 조회 / 수정 / 삭제 (CRUD)
	
	// 아이템 구매 (C)
	
}
