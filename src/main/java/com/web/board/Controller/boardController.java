package com.web.board.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.board.Service.boardService;
import com.web.board.VO.boardVO;




@Controller
public class boardController {
	
	@Autowired 
	boardService board; 
	
	ModelAndView mv = null;
	
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String boardPage() throws Exception{
		
		return "/board/board";
	}
	
	
	@RequestMapping(value = "/boardList" ,method =RequestMethod.POST)
	@ResponseBody
	public ModelAndView boardList(HttpServletRequest request,boardVO boardVo,Model model) throws Exception{
		ModelAndView mav = new ModelAndView();
		List<boardVO> boardInfo = board.selectBoardInfo(boardVo);
		System.out.println(boardInfo);
		mav.addObject(boardInfo);
		return mav;
	}
	
	
//	@RequestMapping(value = "/insertBoard")
//	@ResponseBody
//	public Integer insertBoard (boardVO boardVo) throws Exception{
//
//		return board.insertBoardInfo(boardVo);	
//	}
//	
//	@RequestMapping(value = "/deleteBoard")
//	@ResponseBody
//	public Integer deleteBoard (boardVO boardVo) throws Exception{
//
//		return board.deleteBoardInfo(boardVo);	
//	}
//	
//	@RequestMapping(value = "/deleteBoard")
//	@ResponseBody
//	public Integer updateBoard (boardVO boardVo) throws Exception{
//
//		return board.updateBoardInfo(boardVo);	
//	}
//	
//	
		
		
		
}
