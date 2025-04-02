package com.app.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.EventViewDTO;
import com.app.mybatis.config.MyBatisConfig;

public class EventDAO {
	public SqlSession sqlSession;
	
	public EventDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// 이벤트 추가 (C)
	
	// 전체 조회 (R)
	public List<EventViewDTO> eventList () {
		return sqlSession.selectList("event.eventList");
	}
	
	// 진행 중인 이벤트만 조회 (R)
		
	// 한개 데이터 조회 (R)
		
	// 이벤트 좋아요 추가 삭제 (CRUD)
		
	// 이벤트 댓글 조회 / 추가 / 삭제 (CRD)
		
	// 이벤트 댓글 좋아요 추가 삭제 (CRD)
	
}
