package com.animergency.service;

import java.util.List;

import com.animergency.vo.FreeVO;

public interface FreeService {

   
   public int freeinsertBoard(FreeVO freeVO);
   
   public List<FreeVO> freelistBoard();
   
   public FreeVO freereadBoard(int fIDX);
   
   public int freeupdateBoard(FreeVO FreeVO);
   
   public int freehitBoard(int fIDX);
   
   public int freedeleteBoard(int fIDX);
   
   

   
}