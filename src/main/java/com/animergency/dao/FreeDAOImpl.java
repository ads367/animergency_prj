package com.animergency.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.animergency.vo.FreeVO;

@Repository
public class FreeDAOImpl implements FreeDAO {

   @Autowired
   SqlSession sqlSession;
   
   @Override
   public int freeinsertBoard(FreeVO freeVO) {
      return sqlSession.insert("freeMapper.freeinsertBoard", freeVO);
   }

   @Override
   public List<FreeVO> freelistBoard() {
      return sqlSession.selectList("freeMapper.freelistBoard");
   }

   @Override
   public FreeVO freereadBoard(int fIDX) {
      return sqlSession.selectOne("freeMapper.freereadBoard", fIDX);
   }

   @Override
   public int freeupdateBoard(FreeVO freeVO) {
      return sqlSession.update("freeMapper.freeupdateBoard", freeVO);
   }

   @Override
   public int freehitBoard(int fIDX) {
      return sqlSession.update("freeMapper.freehitBoard", fIDX);
   }

   @Override
   public int freedeleteBoard(int fIDX) {
      return sqlSession.update("freeMapper.freedeleteBoard", fIDX);
   }

}