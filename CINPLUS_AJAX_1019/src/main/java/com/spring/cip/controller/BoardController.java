package com.spring.cip.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.cip.service.BoardService;
import com.spring.cip.vo.BoardVO;


@RestController  //리턴 타입이 객체면 JSON형태로 리턴해준다.
public class BoardController {

	@Inject
	private BoardService boardService;
	
    //(2_1) 목록보기 ==>검색기능
	@RequestMapping("board/list")
	public ModelAndView list() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/list"); 
		return mav;
	}
	
	@PostMapping("board/listData") //데이터만 주는 URL
	public List<BoardVO> listData(@RequestParam(defaultValue="") String MBR_NM, @RequestParam(defaultValue="") String BZPP_NM) throws Exception{
		return boardService.listAll(MBR_NM, BZPP_NM);
	}
}
