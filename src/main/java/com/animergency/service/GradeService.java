package com.animergency.service;

import java.util.List;

import com.animergency.vo.GradeVO;

public interface GradeService {

	public int gradeUpApply(GradeVO gradeVO) throws Exception;
	
	public int gradeUpdate(GradeVO gradeVO) throws Exception;
	
	public List<GradeVO> gradeList() throws Exception;
	
	public int gradeDelete(GradeVO gradeVO) throws Exception;
	
}
