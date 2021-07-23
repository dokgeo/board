package com.web.board.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.web.board.DAO.boardDAO;
import com.web.board.VO.boardVO;

@Service 
public class boardService {


	ModelAndView mav =null;
	
	@Autowired
	private boardDAO  board;

	



	

	private ArrayList<boardVO> selectBoardInfo(boardVO boardVo){
		return this.selectBoardInfo(boardVo);
	}


}
