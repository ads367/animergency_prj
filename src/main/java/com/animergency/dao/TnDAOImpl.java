package com.animergency.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.animergency.vo.TnVO;

@Repository
public class TnDAOImpl implements TnDAO {

   @Autowired
   SqlSession sqlSession;
   @Override
   public int tninsertBoard(TnVO tnVO) {
      return sqlSession.insert("tnMapper.tninsertBoard", tnVO);
   }

   @Override
   public List<TnVO> tnlistBoard() {
      return  sqlSession.selectList("tnMapper.tnlistBoard");
   }

   @Override
   public TnVO tnreadBoard(int tIDX) {
      return  sqlSession.selectOne("tnMapper.tnreadBoard", tIDX);
   }

   @Override
   public int tnupdateBoard(TnVO tnVO) {
      return  sqlSession.update("tnMapper.tnupdateBoard", tnVO);
   }

   @Override
   public int tnhitBoard(int tIDX) {
      return  sqlSession.update("tnMapper.tnhitBoard", tIDX);
   }

   @Override
   public int tndeleteBoard(int tIDX) {
      return  sqlSession.update("tnMapper.tndeleteBoard", tIDX);
   }

}