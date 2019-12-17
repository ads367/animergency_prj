package com.animergency.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.animergency.vo.QaVO;

@Repository
public class QaDAOImpl implements QaDAO {
   
   @Autowired
   SqlSession sqlSession;
   @Override
   public int qainsertBoard(QaVO qaVO) {
      
      
      return sqlSession.insert("qaMapper.qainsertBoard", qaVO);
   }

   @Override
   public List<QaVO> qalistBoard() {
      
      return sqlSession.selectList("qaMapper.qalistBoard");
   }

   @Override
   public QaVO qareadBoard(int qIDX) {
      
      return sqlSession.selectOne("qaMapper.qareadBoard", qIDX);
   }

   @Override
   public int qaupdateBoard(QaVO qaVO) {

      return sqlSession.update("qaMapper.qaupdateBoard", qaVO);
   }

   @Override
   public int qahitBoard(int qIDX) {
      return sqlSession.update("qaMapper.qahitBoard", qIDX);
   }

   @Override
   public int qadeleteBoard(int qIDX) {
      return sqlSession.update("qaMapper.qadeleteBoard", qIDX);
   }
   
   

}