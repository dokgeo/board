package com.web.board.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.web.board.VO.BoardPagingVO;
import com.web.board.VO.BoardVO;

@Repository("BoardDAO")
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardVO> boardPaging(BoardPagingVO boardPagingVo) throws Exception {
		return sqlSession.selectList("boardPaging",boardPagingVo);
	}
	
	@Override
	public int listCount() throws Exception {
		return sqlSession.selectOne("listCount");
	}
	
	@Override
	public BoardVO selectBoardInfoDetail(int board_id) throws Exception {
		return sqlSession.selectOne("selectBoardInfoDetail",board_id);
	}

	@Override
	public void deleteBoardInfo(int board_id) throws Exception {
		 sqlSession.delete("deleteBoardInfo",board_id);
	}

	@Override
	public void insertBoardInfo(BoardVO boardVo) throws Exception {
		 sqlSession.insert("insertBoardInfo",boardVo);
	}

	@Override
	public void updateBoardInfo(BoardVO boardVo) throws Exception {
		 sqlSession.update("updateBoardInfo",boardVo);
	}



}
