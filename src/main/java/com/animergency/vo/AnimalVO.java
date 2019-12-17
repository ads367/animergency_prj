package com.animergency.vo;

public class AnimalVO {

	private int aniIDX;
	private String aniBirth;
	private String aniName;
	private String aniSex;
	private String aniType;
	private String aniDate;
	private String userId;
	
	public AnimalVO() {
		super();
	}
	public AnimalVO(int aniIDX, String aniBirth, String aniName, String aniSex, String aniType, String aniDate,
			String userId) {
		super();
		this.aniIDX = aniIDX;
		this.aniBirth = aniBirth;
		this.aniName = aniName;
		this.aniSex = aniSex;
		this.aniType = aniType;
		this.aniDate = aniDate;
		this.userId = userId;
	}
	public int getAniIDX() {
		return aniIDX;
	}
	public void setAniIDX(int aniIDX) {
		this.aniIDX = aniIDX;
	}
	public String getAniBirth() {
		return aniBirth;
	}
	public void setAniBirth(String aniBirth) {
		this.aniBirth = aniBirth;
	}
	public String getAniName() {
		return aniName;
	}
	public void setAniName(String aniName) {
		this.aniName = aniName;
	}
	public String getAniSex() {
		return aniSex;
	}
	public void setAniSex(String aniSex) {
		this.aniSex = aniSex;
	}
	public String getAniType() {
		return aniType;
	}
	public void setAniType(String aniType) {
		this.aniType = aniType;
	}
	public String getAniDate() {
		return aniDate;
	}
	public void setAniDate(String aniDate) {
		this.aniDate = aniDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "AnimalVO [aniIDX=" + aniIDX + ", aniBirth=" + aniBirth + ", aniName=" + aniName + ", aniSex=" + aniSex
				+ ", aniType=" + aniType + ", aniDate=" + aniDate + ", userId=" + userId + "]";
	}
	
}
