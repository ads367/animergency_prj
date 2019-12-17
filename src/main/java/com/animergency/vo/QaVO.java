package com.animergency.vo;

import java.util.Arrays;

public class QaVO {
   
   
   private int qIDX;
   private String qDate;
   private String userId;
   private int qCount;
   private String qTitle;
   private String qContent;
   private int comIDX;
   private int qAvailable;
   private byte[] qFile;
   
   
   public int getqIDX() {
      return qIDX;
   }
   public void setqIDX(int qIDX) {
      this.qIDX = qIDX;
   }
   public String getqDate() {
      return qDate;
   }
   public void setqDate(String qDate) {
      this.qDate = qDate;
   }
   public String getUserId() {
      return userId;
   }
   public void setUserId(String userId) {
      this.userId = userId;
   }
   public int getqCount() {
      return qCount;
   }
   public void setqCount(int qCount) {
      this.qCount = qCount;
   }
   public String getqTitle() {
      return qTitle;
   }
   public void setqTitle(String qTitle) {
      this.qTitle = qTitle;
   }
   public String getqContent() {
      return qContent;
   }
   public void setqContent(String qContent) {
      this.qContent = qContent;
   }
   public int getComIDX() {
      return comIDX;
   }
   public void setComIDX(int comIDX) {
      this.comIDX = comIDX;
   }
   public int getqAvailable() {
      return qAvailable;
   }
   public void setqAvailable(int qAvailable) {
      this.qAvailable = qAvailable;
   }
   public byte[] getqFile() {
      return qFile;
   }
   public void setqFile(byte[] qFile) {
      this.qFile = qFile;
   }
   @Override
   public String toString() {
      return "QaVO [qIDX=" + qIDX + ", qDate=" + qDate + ", userId=" + userId + ", qCount=" + qCount + ", qTitle="
            + qTitle + ", qContent=" + qContent + ", comIDX=" + comIDX + ", qAvailable=" + qAvailable + ", qFile="
            + Arrays.toString(qFile) + "]";
   }
   public QaVO(int qIDX, String qDate, String userId, int qCount, String qTitle, String qContent, int comIDX,
         int qAvailable, byte[] qFile) {
      super();
      this.qIDX = qIDX;
      this.qDate = qDate;
      this.userId = userId;
      this.qCount = qCount;
      this.qTitle = qTitle;
      this.qContent = qContent;
      this.comIDX = comIDX;
      this.qAvailable = qAvailable;
      this.qFile = qFile;
   }
   public QaVO() {
      super();
   }
   
   
   
}