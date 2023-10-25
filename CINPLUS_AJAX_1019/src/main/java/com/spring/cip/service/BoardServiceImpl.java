package com.spring.cip.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.spring.cip.dao.BoardDAO;
import com.spring.cip.vo.BoardVO;


@Service 
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO boardDao;
	

	@Override
	public List<BoardVO> listAll(String MBR_NM, String BZPP_NM) throws Exception {
		return boardDao.listAll(MBR_NM, BZPP_NM);
	}
	
}
