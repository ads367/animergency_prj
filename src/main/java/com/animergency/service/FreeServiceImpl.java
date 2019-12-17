package com.animergency.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animergency.dao.FreeDAO;
import com.animergency.vo.FreeVO;

@Service
public class FreeServiceImpl implements FreeService {

   @Autowired
   FreeDAO freeDAO;
   @Override
   public int freeinsertBoard(FreeVO freeVO) {
      return freeDAO.freeinsertBoard(freeVO);
   }

   @Override
   public List<FreeVO> freelistBoard() {
      return freeDAO.freelistBoard();
   }

   @Override
   public FreeVO freereadBoard(int fIDX) {
      freeDAO.freehitBoard(fIDX);
      return freeDAO.freereadBoard(fIDX);
   }

   @Override
   public int freeupdateBoard(FreeVO freeVO) {
      return freeDAO.freeupdateBoard(freeVO);
   }

   @Override
   public int freehitBoard(int fIDX) {
      return freeDAO.freehitBoard(fIDX);
   }

   @Override
   public int freedeleteBoard(int fIDX) {
      return freeDAO.freedeleteBoard(fIDX);
   }

}