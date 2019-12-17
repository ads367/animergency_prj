package com.animergency.service;

import java.util.List;

import com.animergency.vo.TnVO;

public interface TnService {

   
   public int tninsertBoard(TnVO tnVO);
   
   public List<TnVO> tnlistBoard();
   
   public TnVO tnreadBoard(int tIDX);
   
   public int tnupdateBoard(TnVO tnVO);
   
   public int tnhitBoard(int tIDX);
   
   public int tndeleteBoard(int tIDX);

   
}