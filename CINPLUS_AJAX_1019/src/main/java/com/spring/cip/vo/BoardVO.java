package com.spring.cip.vo;

import java.sql.Date;

public class BoardVO {
	
	private String MBR_NM;
	private String MBR_USER_ID;
	private String MBR_PHONE;
	private String BZPP_ORDER_NO;
	private String PDT_NO;
	private String PDT_NM;
	private String BZPP_NM;
	private String BZPP_PHONE;
	private String BZPP_ADDR;
	private String DEL_YN;
	
	
	public String getMBR_NM() {
		return MBR_NM;
	}
	public void setMBR_NM(String mBR_NM) {
		MBR_NM = mBR_NM;
	}
	public String getMBR_USER_ID() {
		return MBR_USER_ID;
	}
	public void setMBR_USER_ID(String mBR_USER_ID) {
		MBR_USER_ID = mBR_USER_ID;
	}
	public String getMBR_PHONE() {
		return MBR_PHONE;
	}
	public void setMBR_PHONE(String mBR_PHONE) {
		MBR_PHONE = mBR_PHONE;
	}
	public String getBZPP_ORDER_NO() {
		return BZPP_ORDER_NO;
	}
	public void setBZPP_ORDER_NO(String bZPP_ORDER_NO) {
		BZPP_ORDER_NO = bZPP_ORDER_NO;
	}
	public String getPDT_NO() {
		return PDT_NO;
	}
	public void setPDT_NO(String pDT_NO) {
		PDT_NO = pDT_NO;
	}
	public String getPDT_NM() {
		return PDT_NM;
	}
	public void setPDT_NM(String pDT_NM) {
		PDT_NM = pDT_NM;
	}
	public String getBZPP_NM() {
		return BZPP_NM;
	}
	public void setBZPP_NM(String bZPP_NM) {
		BZPP_NM = bZPP_NM;
	}
	public String getBZPP_PHONE() {
		return BZPP_PHONE;
	}
	public void setBZPP_PHONE(String bZPP_PHONE) {
		BZPP_PHONE = bZPP_PHONE;
	}
	public String getBZPP_ADDR() {
		return BZPP_ADDR;
	}
	public void setBZPP_ADDR(String bZPP_ADDR) {
		BZPP_ADDR = bZPP_ADDR;
	}
	public String getDEL_YN() {
		return DEL_YN;
	}
	public void setDEL_YN(String dEL_YN) {
		DEL_YN = dEL_YN;
	}
	
	
	@Override
	public String toString() {
		return "BoardVO [MBR_NM=" + MBR_NM + ", MBR_USER_ID=" + MBR_USER_ID + ", MBR_PHONE=" + MBR_PHONE
				+ ", BZPP_ORDER_NO=" + BZPP_ORDER_NO + ", PDT_NO=" + PDT_NO + ", PDT_NM=" + PDT_NM + ", BZPP_NM="
				+ BZPP_NM + ", BZPP_PHONE=" + BZPP_PHONE + ", BZPP_ADDR=" + BZPP_ADDR + ", DEL_YN=" + DEL_YN + "]";
	}
}
