package com.web.board.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.board.DAO.boardDAO;
import com.web.board.VO.boardVO;

@Service
public class boardServiceImpl implements boardService {

	@Autowired
	boardDAO boardDao;
	
	@Override
	public List<boardVO> selectBoardInfo(boardVO boardVo) throws Exception{
		return boardDao.selectBoardInfo(boardVo);
	}

	@Override
	public Integer deleteBoardInfo(boardVO boardVo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer insertBoardInfo(boardVO boardVo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer updateBoardInfo(boardVO boardVo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


}