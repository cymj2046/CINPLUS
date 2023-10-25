package com.spring.cip.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.spring.cip.vo.BoardVO;


public interface BoardService {

	
	//게시글 목록보기 => 검색기능
	public List<BoardVO> listAll(String MBR_NM, String BZPP_NM) throws Exception;
}
