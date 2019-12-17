package com.animergency.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.animergency.vo.AnimalVO;
import com.animergency.vo.UserVO;

public interface UserService {

	// 아이디 중복 확인
	public int userIdCheck(String userId) throws Exception;

	// 회원가입
	public int userJoin(UserVO userVO) throws Exception;
	
	// 로그인
	public UserVO userLogin(UserVO userVO, HttpServletResponse response) throws Exception;

	// 회원 정보 확인
	public UserVO userInfo(UserVO userVO) throws Exception;

	// 회원 정보 수정
	public int userUpdate(UserVO userVO) throws Exception;

	// 비밀번호 찾기
	public void userPasswordSearch(UserVO userVO, HttpServletResponse response) throws Exception;

	// 전송 메일 설정
	public void sendEmail(UserVO userVO, String div) throws Exception;
	
	// 회원탈퇴
	public int userDelete(UserVO userVO) throws Exception;
	
	// 애완동물 추가
	public int animalJoin(AnimalVO animalVO) throws Exception;
	
	// 애완동물 리스트
	public List<AnimalVO> animalList(AnimalVO animalVO) throws Exception;

}
