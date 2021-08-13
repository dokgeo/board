package com.web.board.DAO;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.web.board.VO.BoardVO;

public interface BoardDAO {
	
	public List<BoardVO> selectBoardInfo(BoardVO boardVo) throws Exception;
	
	public BoardVO selectBoardInfoDetail(int board_id) throws Exception;
	
	public void deleteBoardInfo(int board_id)throws Exception;
	
	public void insertBoardInfo(BoardVO boardVo)throws Exception;	
	
	public void updateBoardInfo(BoardVO boardVo)throws Exception;
}
