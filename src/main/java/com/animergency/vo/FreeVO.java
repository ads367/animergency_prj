package com.animergency.vo;

import java.util.Arrays;

public class FreeVO {
   private int fIDX;
   private String fDate;
   private String userId;
   private int fCount;
   private String fTitle;
   private String fContent;
   private int comIDX;
   private int fAvailable;
   private byte[] fFile;
   public int getfIDX() {
      return fIDX;
   }
   public void setfIDX(int fIDX) {
      this.fIDX = fIDX;
   }
   public String getfDate() {
      return fDate;
   }
   public void setfDate(String fDate) {
      this.fDate = fDate;
   }
   public String getUserId() {
      return userId;
   }
   public void setUserId(String userId) {
      this.userId = userId;
   }
   public int getfCount() {
      return fCount;
   }
   public void setfCount(int fCount) {
      this.fCount = fCount;
   }
   public String getfTitle() {
      return fTitle;
   }
   public void setfTitle(String fTitle) {
      this.fTitle = fTitle;
   }
   public String getfContent() {
      return fContent;
   }
   public void setfContent(String fContent) {
      this.fContent = fContent;
   }
   public int getComIDX() {
      return comIDX;
   }
   public void setComIDX(int comIDX) {
      this.comIDX = comIDX;
   }
   public int getfAvailable() {
      return fAvailable;
   }
   public void setfAvailable(int fAvailable) {
      this.fAvailable = fAvailable;
   }
   public byte[] getfFile() {
      return fFile;
   }
   public void setfFile(byte[] fFile) {
      this.fFile = fFile;
   }
   @Override
   public String toString() {
      return "FreeVO [fIDX=" + fIDX + ", fDate=" + fDate + ", userId=" + userId + ", fCount=" + fCount + ", fTitle="
            + fTitle + ", fContent=" + fContent + ", comIDX=" + comIDX + ", fAvailable=" + fAvailable + ", fFile="
            + Arrays.toString(fFile) + "]";
   }
   public FreeVO(int fIDX, String fDate, String userId, int fCount, String fTitle, String fContent, int comIDX,
         int fAvailable, byte[] fFile) {
      super();
      this.fIDX = fIDX;
      this.fDate = fDate;
      this.userId = userId;
      this.fCount = fCount;
      this.fTitle = fTitle;
      this.fContent = fContent;
      this.comIDX = comIDX;
      this.fAvailable = fAvailable;
      this.fFile = fFile;
   }
   public FreeVO() {
      super();
   }
   
   
}