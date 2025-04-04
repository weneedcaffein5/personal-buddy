package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.BoardCommentViewDTO;
import com.app.dto.BoardPostViewDTO;
import com.app.dto.BoardViewDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.BoardCommentVO;
import com.app.vo.BoardImgVO;
import com.app.vo.BoardLikeVO;
import com.app.vo.BoardPostVO;

public class CommunityDAO {
	public SqlSession sqlSession;
	
	public CommunityDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	검색 (타이틀만)
	
    // 최신 순 + 해시태그
    public List<BoardViewDTO> sortByLatestAndHashtag(String hashtag) {
        return sqlSession.selectList("community.sortByLatestAndHashtag", hashtag);
    }

    // 좋아요 순 + 해시태그
    public List<BoardViewDTO> sortByLikesAndHashtag(String hashtag) {
        return sqlSession.selectList("community.sortByLikesAndHashtag", hashtag);
    }

    // 조회수 순 + 해시태그
    public List<BoardViewDTO> sortByViewsAndHashtag(String hashtag) {
        return sqlSession.selectList("community.sortByViewsAndHashtag", hashtag);
    }
	

	
//	게시글 추가
	public void insertPost(BoardPostVO boardPostVO) {
		sqlSession.insert("community.insertPost", boardPostVO);
	}

// 	게시글 이미지 추가
	public void insertImg(BoardImgVO boardImgVO) {
		sqlSession.insert("community.insertBoardImg", boardImgVO);
	}

	public Long getNextPostId() {
	    return sqlSession.selectOne("community.getNextPostId");
	}
	
//	게시글 단일 조회
	public BoardPostViewDTO readPost(Long id) {
		return sqlSession.selectOne("community.readPost", id);
	}
	
//	조회된 게시글 이미지
	public List<BoardImgVO> readPostImg(Long id) {
		return sqlSession.selectList("community.readPostImg", id);
	}
	
//	게시물 좋아요 생성
	public void insertLike(BoardLikeVO boardLikeVO) {
		sqlSession.insert("community.insertLike", boardLikeVO);
	}
//	게시물 좋아요 삭제
	public void deleteLike(Long id) {
		sqlSession.delete("community.deleteLike", id);
	}
//	게시물 좋아요 조회
	public BoardLikeVO selectPostLike(BoardLikeVO boardLikeVO) {
		return sqlSession.selectOne("community.selectPostLike", boardLikeVO);
	}
//	게시물 좋아요 조회[아이디]
	public BoardLikeVO selectPostLikeId(Long id) {
		return sqlSession.selectOne("community.selectPostLikeId", id);
	}
	
//	댓글 작성
	public void insertPostComment(BoardCommentVO BoardCommentVO) {
		sqlSession.insert("community.insertPostComment", BoardCommentVO);
	}
//	댓글 리스트 조회
	public List<BoardCommentViewDTO> selectCommentList(Long id) {
		return sqlSession.selectList("community.selectCommentList", id);
	}
}