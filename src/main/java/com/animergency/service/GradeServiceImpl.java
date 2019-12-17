package com.animergency.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animergency.dao.GradeDAO;
import com.animergency.vo.GradeVO;

@Service
public class GradeServiceImpl implements GradeService {

	@Autowired
	GradeDAO dao;
	
	// 등업 신청
	@Override
	public int gradeUpApply(GradeVO gradeVO) throws Exception {
		// TODO Auto-generated method stub
		return dao.gradeUpApply(gradeVO);
	}

	// 등급 수정
	@Override
	public int gradeUpdate(GradeVO gradeVO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	// 등업 신청 리스트
	@Override
	public List<GradeVO> gradeList() throws Exception {
		// TODO Auto-generated method stub
		return dao.gradeList();
	}

	@Override
	public int gradeDelete(GradeVO gradeVO) throws Exception {
		// TODO Auto-generated method stub
		return dao.gradeDelete(gradeVO);
	}

}
