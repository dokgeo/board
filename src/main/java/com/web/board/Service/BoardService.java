package com.web.board.Service;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.web.board.VO.BoardPagingVO;
import com.web.board.VO.BoardVO;

public interface BoardService {

//	게시글 목록
	public List<BoardVO> boardPaging(BoardPagingVO boardPagingVo) throws Exception;
	
//	게시글 총 갯수 
	public int listCount() throws Exception;
	
//	게시글 상세조회
	public BoardVO selectBoardInfoDetail(int board_id) throws Exception;
	
//	게시글 삭제
	public void deleteBoardInfo(int board_id)throws Exception;
	
//	게시글 작성
	public void insertBoardInfo(BoardVO boardVo)throws Exception;	
	
//	게시글 수정
	public void updateBoardInfo(BoardVO boardVo)throws Exception;


}