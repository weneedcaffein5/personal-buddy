package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.RecommendDTO;
import com.app.mybatis.config.MyBatisConfig;

public class RecommendDAO {
	public SqlSession sqlSession;
	
	public RecommendDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<RecommendDTO> selectByCategoryList(String category){
		List<RecommendDTO> list =  sqlSession.selectList("recommendMapper.selectByCategoryList", category);
		
		for(RecommendDTO dto : list) {
			dto.setDescription(dto.getDescription());
		}
		return list;
	}
	
	public List<RecommendDTO> selectByMemberId(Long memberId) {
	    List<RecommendDTO> list = sqlSession.selectList("recommendMapper.selectByMemberId", memberId);
	    for (RecommendDTO dto : list) {
	        dto.setDescription(dto.getDescription());
	    }
	    return list;
	}
	
}
