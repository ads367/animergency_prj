package com.animergency.dao;

import java.util.List;

import com.animergency.vo.FreeVO;

public interface FreeDAO  {
   
   public int freeinsertBoard(FreeVO freeVO); 
   
   public List<FreeVO> freelistBoard(); 
   
   public FreeVO freereadBoard(int fIDX);    
   
   public int freeupdateBoard(FreeVO freeVO); 
   
   public int freehitBoard(int fIDX);
   
   public int freedeleteBoard(int fIDX);

}