package com.animergency.service;

import java.util.List;

import com.animergency.vo.QaVO;

public interface QaService {

   public int qainsertBoard(QaVO qaVO);

   public List<QaVO> qalistBoard();

   public QaVO qareadBoard(int qIDX);

   public int qaupdateBoard(QaVO qaVO);

   public int qahitBoard(int qIDX);

   public int qadeleteBoard(int qIDX);

}