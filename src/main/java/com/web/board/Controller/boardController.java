package com.web.board.Controller;

import java.util.ArrayList;
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
	public String boardPage(boardVO boardVo,Model model) throws Exception{
		
		List<boardVO> boardInfo = board.selectBoardInfo(boardVo);
		
		model.addAttribute("list",boardInfo);
		return "/board/board";
	}
}
