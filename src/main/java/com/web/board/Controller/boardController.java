package com.web.board.Controller;

import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.board.Service.boardService;
import com.web.board.VO.boardVO;

import kr.zikiz.common.vo.BsnplVO;



@Controller
public class boardController {
	
	
	@Autowired
	private boardService service;
	
	ModelAndView mv = null;
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String testPage() {
		
		
		return "/test";
	}
	
	@RequestMapping(value = "/2", method = RequestMethod.GET)
	public String testPage2() {
		
		
		return "/test2";
	}
	@RequestMapping(value = "/api/json/selectboardInfo", method = RequestMethod.POST)
	public String selectEmpInfo(HttpServletRequest request, Model model,boardVO boardVo) {
		
		List<boardVO> board = boardService.selectBoardInfo(boardVo);

		model.addAttribute("result",board);
		return model;
	}
