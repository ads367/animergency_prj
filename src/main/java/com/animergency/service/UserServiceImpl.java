package com.animergency.service;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animergency.dao.UserDAO;
import com.animergency.vo.AnimalVO;
import com.animergency.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO dao;
	
	// 중복확인
	@Override
	public int userIdCheck(String userId) throws Exception {
		// TODO Auto-generated method stub
		return dao.userIdCheck(userId);
	}

	// 회원가입
	@Override
	public int userJoin(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return dao.userJoin(userVO);
	}

	// 로그인
	@Override
	public UserVO userLogin(UserVO userVO, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(dao.userIdCheck(userVO.getUserId()) == 0) {
			out.println("<script>");
			out.println("alert('등록된 아이디가 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		}
		else {
			String pw = userVO.getUserPw();
			userVO = dao.userLogin(userVO.getUserId());
			if(!userVO.getUserPw().equals(pw)) {
				out.println("<script>");
				out.println("alert('비밀번호가 틀렸습니다.');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
				return null;
			}
			else {
				return userVO;
			}
		}
	}
	
	// 회원정보 확인
	@Override
	public UserVO userInfo(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return dao.userInfo(userVO);
	}

	// 회원정보 수정
	@Override
	public int userUpdate(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return dao.userUpdate(userVO);
	}

	// 비밀번호 찾기
	@Override
	public void userPasswordSearch(UserVO userVO, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(dao.userIdCheck(userVO.getUserId() ) == 0) {
			out.println("<script>");
			out.println("alert('등록된 아이디가 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		else if(!userVO.getUserEmail().equals(dao.userLogin(userVO.getUserId()).getUserEmail())) {
			out.println("<script>");
			out.println("alert('등록된 이메일과 다릅니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		else {
			String tempPw = "";			// 임시 비밀번호 생성
			for(int i = 0; i < 10; i++) {
				tempPw += (char) ((Math.random() * 26) + 97);
			}
			userVO.setUserPw(tempPw);
			dao.userPasswordSearch(userVO);			// 비밀번호 변경
			sendEmail(userVO, "userPasswordSearch");	// 변경된 비밀번호 이메일로 전송
			out.println("<script>");
			out.println("alert('이메일로 임시 비밀번호를 전송했습니다.');");
			out.println("location.href='/member/login';");
			out.println("</script>");
			out.close();
		}
	}
	
	// 이메일 전송
	@Override
	public void sendEmail(UserVO userVO, String div) throws Exception {
		// TODO Auto-generated method stub
		// 메일 서버 설정
		String charSet = "UTF-8";
		String hostSMTP = "smtp.naver.com";
		String hostSMTPid = "ads367";
		String hostSMTPpwd = "비밀번호확인";
		
		// 보내는 사람 메일 및 내용
		String fromEmail = "ads367@naver.com";
		String fromName = "Animergency";
		String subject = "";
		String msg = "";
		
		if(div.equals("userPasswordSearch")) {
			subject = "Animergency 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid #dddddd;'>";
			msg += "<h3 style='color: blue;'>";
			msg += userVO.getUserId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하시기 바랍니다.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += userVO.getUserPw() + "</p></div>";
		}
		
		// 받는 사람 메일 주소
		String mail = userVO.getUserEmail();
		
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSLOnConnect(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587);
	
			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setStartTLSEnabled(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch(Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}

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
		return dao.animalJoin(animalVO);
	}
	
	// 애완동물 리스트
	@Override
	public List<AnimalVO> animalList(AnimalVO animalVO) throws Exception {
		// TODO Auto-generated method stub
		return dao.animalList(animalVO);
	}

}
