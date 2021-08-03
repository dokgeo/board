package com.web.board.DAO;

import java.util.List;

import org.springframework.stereotype.Service;

import com.web.board.VO.boardVO;

public interface boardDAO {
	
	public List<boardVO> selectBoardInfo(boardVO boardVo) throws Exception;
	 
}
