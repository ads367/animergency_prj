package com.animergency.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animergency.dao.QaDAO;
import com.animergency.vo.QaVO;

@Service
public class QaServiceImpl implements QaService {

   @Autowired
   QaDAO qdao;
   @Override
   public int qainsertBoard(QaVO qaVO) {
      return qdao.qainsertBoard(qaVO);
   }

   @Override
   public List<QaVO> qalistBoard() {
      return qdao.qalistBoard();
   }

   @Override
   public QaVO qareadBoard(int qIDX) {
      qdao.qahitBoard(qIDX);
      return qdao.qareadBoard(qIDX);
   }

   @Override
   public int qaupdateBoard(QaVO qaVO) {
      return qdao.qaupdateBoard(qaVO);
   }

   @Override
   public int qahitBoard(int qIDX) {
      return qdao.qahitBoard(qIDX);
   }

   @Override
   public int qadeleteBoard(int qIDX) {
      return qdao.qadeleteBoard(qIDX);
   }
   
   
   

}