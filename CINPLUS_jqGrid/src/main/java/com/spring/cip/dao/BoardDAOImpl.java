package com.spring.cip.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.cip.vo.BoardVO;



@Repository //빈등록
public class BoardDAOImpl implements BoardDAO {

	@Inject //주입
	private SqlSession sqlSession;
	

	@Override
	public List<BoardVO> listAll(String MBR_NM, String BZPP_NM) throws Exception {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("MBR_NM", MBR_NM);
		map.put("BZPP_NM", BZPP_NM);
		//map.put("searchOn", searchOn);
		return sqlSession.
				selectList("board.listAll", map);
	}
	
}
