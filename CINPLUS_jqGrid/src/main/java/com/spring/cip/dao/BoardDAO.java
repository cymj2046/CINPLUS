package com.spring.cip.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.spring.cip.vo.BoardVO;


public interface BoardDAO {
	
	public List<BoardVO> listAll(String MBR_NM, String BZPP_NM) throws Exception;
}
