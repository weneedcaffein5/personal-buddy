package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.BoardViewDTO;
import com.app.mybatis.config.MyBatisConfig;

public class CommunityDAO {
	public SqlSession sqlSession;
	
	public CommunityDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	검색 (타이틀만)
	
//	모든 글 조회
	public List<BoardViewDTO> selectAllBoardPost() {
		return 	sqlSession.selectList("community.selectAllBoardPost");
	}
	
//	정렬 (최신 순)
	public List<BoardViewDTO> sortByLatest() {
		return sqlSession.selectList("community.sortByLatest");
	}
	
//	정렬 (좋아요 순)
	public List<BoardViewDTO> sortByLikes() {
		return sqlSession.selectList("community.sortByLikes");
	}
	
//	정렬 (조회 순)
	public List<BoardViewDTO> sortByViews() {
		return sqlSession.selectList("community.sortByViews");
	}
	
//	필터링(해시태그 자유 게시글)
	public List<BoardViewDTO> filterByFreePost() {
		return sqlSession.selectList("community.filterByFreePost");
	}

//	필터링(해시태그 관심 일정)
	public List<BoardViewDTO> filterByInterestSchedule() {
		return sqlSession.selectList("community.filterByInterestSchdule");
	}
	
//	필터링(해시태그 공유 일정)
	public List<BoardViewDTO> filterByShareSchedule() {
		return sqlSession.selectList("board.filterByShareSchdule");
	}
	
//	게시글 추가
	
//	댓글 추가
	
//	게시글 수정
	
//	댓글 수정
	
//	게시글 삭제
	
//	댓글 삭제
}