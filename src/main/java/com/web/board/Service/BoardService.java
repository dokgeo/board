package com.web.board.Service;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.web.board.VO.BoardVO;

public interface BoardService {


	public List<BoardVO> selectBoardInfo(BoardVO boardVo) throws Exception;
	
	public BoardVO selectBoardInfoDetail(int board_id) throws Exception;
	
	public void deleteBoardInfo(int board_id)throws Exception;
	
	public void insertBoardInfo(BoardVO boardVo)throws Exception;	
	
	public void updateBoardInfo(BoardVO boardVo)throws Exception;

}