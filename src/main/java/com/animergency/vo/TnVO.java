package com.animergency.vo;

import java.util.Arrays;

public class TnVO {
   
   
   private int tIDX;
   private String tDate;
   private String userId;
   private int tCount;
   private String tTitle;
   private String tContent;
   private int comIDX;
   private int tAvailable;
   private byte[] tFile;
   public int gettIDX() {
      return tIDX;
   }
   public void settIDX(int tIDX) {
      this.tIDX = tIDX;
   }
   public String gettDate() {
      return tDate;
   }
   public void settDate(String tDate) {
      this.tDate = tDate;
   }
   public String getUserId() {
      return userId;
   }
   public void setUserId(String userId) {
      this.userId = userId;
   }
   public int gettCount() {
      return tCount;
   }
   public void settCount(int tCount) {
      this.tCount = tCount;
   }
   public String gettTitle() {
      return tTitle;
   }
   public void settTitle(String tTitle) {
      this.tTitle = tTitle;
   }
   public String gettContent() {
      return tContent;
   }
   public void settContent(String tContent) {
      this.tContent = tContent;
   }
   public int getComIDX() {
      return comIDX;
   }
   public void setComIDX(int comIDX) {
      this.comIDX = comIDX;
   }
   public int gettAvailable() {
      return tAvailable;
   }
   public void settAvailable(int tAvailable) {
      this.tAvailable = tAvailable;
   }
   public byte[] gettFile() {
      return tFile;
   }
   public void settFile(byte[] tFile) {
      this.tFile = tFile;
   }
   @Override
   public String toString() {
      return "TnVO [tIDX=" + tIDX + ", tDate=" + tDate + ", userId=" + userId + ", tCount=" + tCount + ", tTitle="
            + tTitle + ", tContent=" + tContent + ", comIDX=" + comIDX + ", tAvailable=" + tAvailable + ", tFile="
            + Arrays.toString(tFile) + "]";
   }
   public TnVO(int tIDX, String tDate, String userId, int tCount, String tTitle, String tContent, int comIDX,
         int tAvailable, byte[] tFile) {
      super();
      this.tIDX = tIDX;
      this.tDate = tDate;
      this.userId = userId;
      this.tCount = tCount;
      this.tTitle = tTitle;
      this.tContent = tContent;
      this.comIDX = comIDX;
      this.tAvailable = tAvailable;
      this.tFile = tFile;
   }
   public TnVO() {
      super();
   }

   
   
}