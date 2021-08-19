package com.web.board.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.web.board.Service.BoardService;
import com.web.board.VO.BoardVO;
import com.web.board.VO.ContactPointVO;
import com.web.board.VO.CreatorVO;
import com.web.board.VO.MainVO;




@Controller
public class BoardController {
	
	@Autowired 
	BoardService boardService; 
	
	ModelAndView mv = null;
	
	/*
	 * 
	 * 게시판 페이지	 * 
	 * 
	 * */
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String BoardPage(BoardVO boardVo,Model model) throws Exception{

		System.out.println("boardPage ing ..");
		
		List<BoardVO> boardInfo = boardService.selectBoardInfo(boardVo);
		model.addAttribute("list",boardInfo);
		return "/board/board";
	}
	/*
	 * 
	 * 게시판 조회	 * 
	 * 
	 * */
	@RequestMapping(value = "/boardDetail",method = RequestMethod.GET)
	public String BoardDetailPage(BoardVO boardVo,Model model) throws Exception{

		System.out.println("boardDetailPage ing ..");
		
		
		
		model.addAttribute("detail",boardService.selectBoardInfoDetail(boardVo.getBoardId()));
		System.out.println(boardService.selectBoardInfoDetail(boardVo.getBoardId()));
		return "/board/boardDetail";
	}
	/*
	 * 
	 * json to VO 연습	 * 
	 * 
	 * */
	@RequestMapping(value = "/json",method = RequestMethod.GET)
	public void jsonTest(Model model)throws Exception {
		
			MainVO mainVo = new MainVO(); 
			CreatorVO creatorVo = new CreatorVO();
			ContactPointVO contactPointVo = new ContactPointVO();
			
			
			mainVo.setName("과학기술정보퉁신부_도서관서지목록");
			mainVo.setCreateVo(creatorVo);
			
			creatorVo.setName("과학기술정보통신부");
			creatorVo.setContactPointVo(contactPointVo);
			
			
		
			contactPointVo.setContactType("운영지원과");
			contactPointVo.setTelephone("+82-04420244125");
			
			ObjectMapper mapper = new ObjectMapper();
			String testStr = mapper.writeValueAsString(mainVo);
			
			System.out.println("Json:::" + testStr);
		

	}
	/*
	 * 
	 * 게시판 등록 * 
	 * 
	 * */
	@RequestMapping(value = "/insertBoard" ,method = {RequestMethod.GET,RequestMethod.POST})
	public String InsertBoard (BoardVO boardVo) throws Exception{
		boardService.insertBoardInfo(boardVo);
		return "redirect:/";	
	}
	/*
	 * 
	 * 게시판 삭제	 * 
	 * 
	 * */
	@RequestMapping(value = "/deleteBoard",method =  {RequestMethod.GET,RequestMethod.POST})
	public String DeleteBoard (BoardVO boardVo) throws Exception{
		System.out.println("board_id::"+boardVo.getBoardId());
		boardService.deleteBoardInfo(boardVo.getBoardId());
		return "redirect:/";	
	}
	/*
	 * 
	 * 게시판 수정	 * 
	 * 
	 * */
	@RequestMapping(value = "/updateBoard",method = RequestMethod.POST)
	public String UpdateBoard (BoardVO boardVo) throws Exception{
			boardService.updateBoardInfo(boardVo);	
		 return "redirect:/";
	}
	/*
	 * 
	 * 게시판 수정페이지	 * 
	 * 
	 * */
	@RequestMapping(value = "/updateBoardDetail",method = RequestMethod.GET)
	public String UpdateBoardDetail (BoardVO boardVo,Model model) throws Exception{

		model.addAttribute("update",boardService.selectBoardInfoDetail(boardVo.getBoardId()));	
		 
		 return "/board/boardUpdate";
	}
	
		
		
		
}
