package com.web.board.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.board.DAO.BoardDAO;
import com.web.board.VO.BoardPagingVO;
import com.web.board.VO.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO boardDao;
	
	@Override
	public List<BoardVO> boardPaging(BoardPagingVO boardPagingVo) throws Exception{
		return boardDao.boardPaging(boardPagingVo);
	}

	@Override
	public int listCount() throws Exception {
		return boardDao.listCount();
	}

	@Override
	public BoardVO selectBoardInfoDetail(int board_id) throws Exception {
		return boardDao.selectBoardInfoDetail(board_id);
	}
	@Override
	public void deleteBoardInfo(int board_id) throws Exception {
		boardDao.deleteBoardInfo(board_id);
		
	}

	@Override
	public void insertBoardInfo(BoardVO boardVo) throws Exception {
		 boardDao.insertBoardInfo(boardVo);
		
	}

	@Override
	public void updateBoardInfo(BoardVO boardVo) throws Exception {
		
		System.out.println("boardVo :: " + boardVo);
		boardDao.updateBoardInfo(boardVo);
	}





}