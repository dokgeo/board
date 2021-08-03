package com.web.board.Service;

import java.util.List;

import com.web.board.VO.boardVO;

public interface boardService {


	List<boardVO> selectBoardInfo(boardVO boardVo) throws Exception;

}