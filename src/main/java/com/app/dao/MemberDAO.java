package com.app.dao;

import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.MemberVO;

public class MemberDAO {
	public SqlSession sqlSession;
	
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	회원가입
	public void isnert(MemberVO memberVO) {
		sqlSession.insert("member.insert", memberVO);
	}
	
//	로그인
	public String selectByEmailAndPassword(MemberVO memberVO) {
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

}
