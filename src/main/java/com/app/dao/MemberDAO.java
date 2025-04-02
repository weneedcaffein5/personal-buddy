package com.app.dao;

import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.MemberProfileDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.MemberImgVO;
import com.app.vo.MemberVO;

public class MemberDAO {
	public SqlSession sqlSession;
	
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public Long selectNextId() {
		return sqlSession.selectOne("member.selectNextId");
	}
	
//	회원가입
	public void insert(MemberVO memberVO) {
		sqlSession.insert("member.insert", memberVO);
	}
	
//	회원가입(프로필 이미지)
	public void insertImg(MemberImgVO memberImgVO) {
		sqlSession.insert("member.insertImg", memberImgVO);
	}
	
//	로그인
	public Long selectByEmailAndPassword(MemberVO memberVO) {
		return sqlSession.selectOne("member.selectByEmailAndPassword", memberVO);
	}
	
//	멤버 조회
	public Optional<MemberVO> selectByEmail(String memberEmail) {
		return Optional.ofNullable(sqlSession.selectOne("member.selectByEmail", memberEmail)); 
	}
	
//	이메일 중복체크
	public int selectMemberCountByEmail(String memberEmail) {
		return sqlSession.selectOne("member.selectMemberCountByEmail", memberEmail);
	}
	
//	핸드폰 번호 중복체크
	public int selectMemberCountByPhone(String phone) {
		return sqlSession.selectOne("member.selectMemberCountByPhone", phone);
	}
	
//	닉네임 중복체크
	public int selectMemberCountByNickName(String nickName) {
		return sqlSession.selectOne("member.selectMemberCountByNickName", nickName);
	}

//	프로필 정보 조회
	public Optional<MemberProfileDTO> selectMemberProfileById(Long id) {
		return Optional.ofNullable(sqlSession.selectOne("member.selectMemberProfileById", id));
	}
	
//  비밀번호 변경
	public void updatePassword(MemberVO memberVO) {
	    sqlSession.update("member.updatePassword", memberVO);
	}
}
