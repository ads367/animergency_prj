package com.animergency.vo;

public class GradeVO {

	private int gradeIDX;
	private String userId;
	private String userName;
	private int userGrade;
	private String applyContent;
	private String gradeDate;
	
	
	public GradeVO() {
		super();
	}
	public GradeVO(int gradeIDX, String userId, String userName, int userGrade, String applyContent, String gradeDate) {
		super();
		this.gradeIDX = gradeIDX;
		this.userId = userId;
		this.userName = userName;
		this.userGrade = userGrade;
		this.applyContent = applyContent;
		this.gradeDate = gradeDate;
	}
	public int getGradeIDX() {
		return gradeIDX;
	}
	public void setGradeIDX(int gradeIDX) {
		this.gradeIDX = gradeIDX;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUserGrade() {
		return userGrade;
	}
	public void setUserGrade(int userGrade) {
		this.userGrade = userGrade;
	}
	public String getApplyContent() {
		return applyContent;
	}
	public void setApplyContent(String applyContent) {
		this.applyContent = applyContent;
	}
	public String getGradeDate() {
		return gradeDate;
	}
	public void setGradeDate(String gradeDate) {
		this.gradeDate = gradeDate;
	}
	@Override
	public String toString() {
		return "GradeVO [gradeIDX=" + gradeIDX + ", userId=" + userId + ", userName=" + userName + ", userGrade="
				+ userGrade + ", applyContent=" + applyContent + ", gradeDate=" + gradeDate + "]";
	}
	
}
