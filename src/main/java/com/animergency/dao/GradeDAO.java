package com.animergency.dao;

import java.util.List;

import com.animergency.vo.GradeVO;

public interface GradeDAO {

	// 등업 신청
	public int gradeUpApply(GradeVO gradeVO) throws Exception;
	
	// 등급 변경
	public int gradeUpdate(GradeVO gradeVO) throws Exception;
	
	// 등업신청 리스트
	public List<GradeVO> gradeList() throws Exception;
	
	public int gradeDelete(GradeVO gradeVO) throws Exception;
}
