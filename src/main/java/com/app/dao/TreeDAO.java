package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.TreeViewDTO;
import com.app.mybatis.config.MyBatisConfig;

public class TreeDAO {
	public SqlSession sqlSession;
	
	public TreeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// 현재 적용된 나무 조회
    public TreeViewDTO selectUserTree(Long memberId) {
        return sqlSession.selectOne("contents.selectUserTree", memberId);
    }
    
	public void updateUserTree(TreeViewDTO treeViewDTO) {
	    sqlSession.update("contents.updateUserTree", treeViewDTO);
	}
	
	public List<TreeViewDTO> selectOwnedBackgroundAndTreeItems(Long memberId) {
		return sqlSession.selectList("contents.selectOwnedBackgroundAndTreeItems", memberId);
	}
	
	public List<TreeViewDTO> selectOwnedStickerItems(Long memberId) {
		return sqlSession.selectList("contents.selectOwnedStickerItems", memberId);
	}
	// 회원의 트리에 붙은 스티커 목록
	// 회원의 트리에 붙은 스티커 목록 조회 (R)
	
	// 성장나무 커스터마이징 (적용여부 변경) (U)
	
	// 성장나무 커스터마이징 (적용된 스티커 위치이동) (U)
	
	// 전체 아이템 조회
	
	// 타입 별 아이템 조회
	
}
