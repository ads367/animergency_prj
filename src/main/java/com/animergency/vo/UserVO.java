package com.animergency.vo;

public class UserVO {
	
	private int userIDX;
	private String userId;
	private String userPw;
	private int userGrade;
	private String userName;
	private String userPhone;
	private String userAddr;
	private String userEmail;
	private String userDate;
	private int aniIDX;
	
	public UserVO() {
		super();
	}
	public UserVO(int userIDX, String userId, String userPw, int userGrade, String userName, String userPhone,
			String userAddr, String userEmail, String userDate, int aniIDX) {
		super();
		this.userIDX = userIDX;
		this.userId = userId;
		this.userPw = userPw;
		this.userGrade = userGrade;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userAddr = userAddr;
		this.userEmail = userEmail;
		this.userDate = userDate;
		this.aniIDX = aniIDX;
	}
	
	

	public int getUserIDX() {
		return userIDX;
	}
	public void setUserIDX(int userIDX) {
		this.userIDX = userIDX;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public int getUserGrade() {
		return userGrade;
	}
	public void setUserGrade(int userGrade) {
		this.userGrade = userGrade;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserDate() {
		return userDate;
	}
	public void setUserDate(String userDate) {
		this.userDate = userDate;
	}
	public int getAniIDX() {
		return aniIDX;
	}
	public void setAniIDX(int aniIDX) {
		this.aniIDX = aniIDX;
	}
	@Override
	public String toString() {
		return "UserVO [userIDX=" + userIDX + ", userId=" + userId + ", userPw=" + userPw + ", userGrade=" + userGrade
				+ ", userName=" + userName + ", userPhone=" + userPhone + ", userAddr=" + userAddr + ", userEmail="
				+ userEmail + ", userDate=" + userDate + ", aniIDX=" + aniIDX + "]";
	}
	
}
