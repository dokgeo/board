package com.web.board.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.web.board.Service.BoardService;
import com.web.board.VO.BoardVO;
import com.web.board.VO.ContactPointVO;
import com.web.board.VO.CreatorVO;
import com.web.board.VO.MainVO;

import jdk.internal.org.jline.utils.Log;




@Controller
public class BoardController {
	
	@Autowired 
	BoardService boardService; 
	
	ModelAndView mv = null;
	
	
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String boardPage(BoardVO boardVo,Model model) throws Exception{

		System.out.println("boardPage ing ..");
		
		List<BoardVO> boardInfo = boardService.selectBoardInfo(boardVo);
		model.addAttribute("list",boardInfo);
		return "/board/board";
	}
	
	@RequestMapping(value = "/boardDetail",method = RequestMethod.GET)
	public String boardDetailPage(BoardVO boardVo,Model model) throws Exception{

		System.out.println("boardDetailPage ing ..");
		
		
		
		model.addAttribute("Detail",boardService.selectBoardInfoDetail(boardVo.getBoard_id()));
		System.out.println(boardService.selectBoardInfoDetail(boardVo.getBoard_id()));
		return "/board/boardDetail";
	}
	
	@RequestMapping(value = "/json",method = RequestMethod.GET)
	public void jsonTest(Model model)throws Exception {
		
			MainVO mainVo = new MainVO(); 
			CreatorVO creatorVo = new CreatorVO();
			ContactPointVO contactPointVo = new ContactPointVO();
			Map<String,Object> creatorMap = new HashMap<String, Object>();
			Map<String,Object> contactPointMap =new HashMap<String, Object>();
			
			
			mainVo.setName("과학기술정보퉁신부_도서관서지목록");
			
			creatorVo.setName("과학기술정보통신부");
			creatorVo.setContactPoint(contactPointMap);
			creatorMap.put("Name", creatorVo.getName());
			creatorMap.put("contactPoint",creatorVo.getContactPoint());
			
			
		
			contactPointVo.setContactType("운영지원과");
			contactPointVo.setTelephone("+82-04420244125");
			contactPointMap.put("contactType", contactPointVo.getContactType());
			contactPointMap.put("tel", contactPointVo.getTelephone());
			
			ObjectMapper mapper = new ObjectMapper();
			String testStr = mapper.writeValueAsString(mainVo);
			
			System.out.println("Json:::" + testStr);
		

	}
	
	@RequestMapping(value = "/insertBoard" ,method = {RequestMethod.GET,RequestMethod.POST})
	public String insertBoard (BoardVO boardVo) throws Exception{
		boardService.insertBoardInfo(boardVo);
		
		return "redirect:/";	
	}
	
	@RequestMapping(value = "/deleteBoard",method =  {RequestMethod.GET,RequestMethod.POST})
	public String deleteBoard (BoardVO boardVo) throws Exception{
		System.out.println("board_id::"+boardVo.getBoard_id());
		boardService.deleteBoardInfo(boardVo.getBoard_id());
		return "redirect:/";	
	}
	
	@RequestMapping(value = "/updateBoard",method = RequestMethod.POST)
	public String updateBoard (BoardVO boardVo) throws Exception{
			System.out.println();
			boardService.updateBoardInfo(boardVo);	
		 return "redirect:/";
	}
	
	@RequestMapping(value = "/updateBoardDetail",method = RequestMethod.GET)
	public String updateBoardDetail (BoardVO boardVo,Model model) throws Exception{

		model.addAttribute("update",boardService.selectBoardInfoDetail(boardVo.getBoard_id()));	
		 
		 return "/board/boardUpdate";
	}
	
		
		
		
}
