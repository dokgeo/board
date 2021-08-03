package com.web.board.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.board.VO.boardVO;

@Repository("boardDAO")
public class boardDAOImpl implements boardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<boardVO> selectBoardInfo(boardVO boardVo) throws Exception {
		return sqlSession.selectList("selectBoardInfo");
	}

}
