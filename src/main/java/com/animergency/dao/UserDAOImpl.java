package com.animergency.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.animergency.vo.AnimalVO;
import com.animergency.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	SqlSession session = null;
	
	// 중복확인
	@Override
	public int userIdCheck(String userId) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("user.userIdCheck", userId);
	}

	// 회원가입
	@Override
	public int userJoin(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return session.insert("user.userJoin", userVO);
	}

	// 로그인
	@Override
	public UserVO userLogin(String userId) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("user.userLogin", userId);
	}

	
	// 회원정보 확인
	@Override
	public UserVO userInfo(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("user.userLogin", userVO);
	}

	// 회원정보 수정
	@Override
	public int userUpdate(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return session.update("user.userUpdate", userVO);
	}

	// 비밀번호 찾기
	@Override
	public void userPasswordSearch(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		session.update("user.passwordSearch", userVO);
	}

	// 회원탈퇴
	@Override
	public int userDelete(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	// 애완동물 입력
	@Override
	public int animalJoin(AnimalVO animalVO) throws Exception {
		// TODO Auto-generated method stub
		return session.insert("user.animalJoin", animalVO);
	}

	// 애완동물 리스트
	@Override
	public List<AnimalVO> animalList(AnimalVO animalVO) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("user.animalList", animalVO);
	}

}
