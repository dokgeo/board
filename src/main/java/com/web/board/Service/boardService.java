package com.web.board.Service;

import java.util.List;

import com.web.board.VO.boardVO;

public interface boardService {


	public List<boardVO> selectBoardInfo(boardVO boardVo) throws Exception;
	
	public Integer deleteBoardInfo(boardVO boardVo)throws Exception;
	
	public Integer insertBoardInfo(boardVO boardVo)throws Exception;	
	
	public Integer updateBoardInfo(boardVO boardVo)throws Exception;
}