package com.web.board.DAO;

import java.util.ArrayList;

import com.web.board.VO.boardVO;


public interface boardDAO {
	public ArrayList<boardVO> selectBoardInfo(boardVO boardVo);
	
}
