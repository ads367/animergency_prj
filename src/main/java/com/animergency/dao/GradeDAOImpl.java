package com.animergency.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.animergency.vo.GradeVO;

@Repository
public class GradeDAOImpl implements GradeDAO {

	@Autowired
	SqlSession session = null;
	
	// 등업 신청
	@Override
	public int gradeUpApply(GradeVO gradeVO) throws Exception {
		// TODO Auto-generated method stub
		return session.insert("grade.gradeUpApply", gradeVO);
	}

	// 등급 수정
	@Override
	public int gradeUpdate(GradeVO gradeVO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 등급 리스트
	@Override
	public List<GradeVO> gradeList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("grade.gradeList");
	}

	@Override
	public int gradeDelete(GradeVO gradeVO) throws Exception {
		// TODO Auto-generated method stub
		return session.delete("grade.gradeDelete", gradeVO);
	}

}
