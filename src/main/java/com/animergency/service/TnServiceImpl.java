package com.animergency.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animergency.dao.TnDAO;
import com.animergency.vo.TnVO;


@Service
public class TnServiceImpl implements TnService {

   @Autowired
   TnDAO tndao;

   @Override
   public int tninsertBoard(TnVO tnVO) {
      return tndao.tninsertBoard(tnVO);
   }

   @Override
   public List<TnVO> tnlistBoard() {
      return tndao.tnlistBoard();
   }

   @Override
   public TnVO tnreadBoard(int tIDX) {
      tndao.tnhitBoard(tIDX);
      return tndao.tnreadBoard(tIDX);
   }

   @Override
   public int tnupdateBoard(TnVO tnVO) {
      return tndao.tnupdateBoard(tnVO);
   }

   @Override
   public int tnhitBoard(int tIDX) {
      return tndao.tnhitBoard(tIDX);
   }

   @Override
   public int tndeleteBoard(int tIDX) {
      return tndao.tndeleteBoard(tIDX);
   }

}