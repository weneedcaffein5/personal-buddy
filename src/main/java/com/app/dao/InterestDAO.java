package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.InterestVO;

public class InterestDAO {
	public SqlSession sqlSession;
	
	public InterestDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(InterestVO interestVO) {
		sqlSession.insert("interest.insert", interestVO);
	}
	
	public void delete(Long id) {
		sqlSession.delete("interest.delete", id);
	}
	
}
