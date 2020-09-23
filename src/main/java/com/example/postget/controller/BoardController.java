package com.example.postget.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.postget.vo.MemberVO;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert(Locale locale, Model model) {
		logger.info("Insert Page {}.", locale);
		
		return "/board/insert";
	}
	
	@RequestMapping(value = "insertResult", method = RequestMethod.POST)
	public String insertResult(Model model, MemberVO memberVO) {
		// logger.info("Insert Page {}.", locale);
		
		model.addAttribute("title", "method POST");
		model.addAttribute("member", memberVO);
		
		return "/board/insertResult_post";
	}
	
	@RequestMapping(value = "insertResult", method = RequestMethod.GET)
	public String insertResult(Model model, MemberVO memberVO, String s) {
		// logger.info("Insert Page {}.", locale);
		
		HashMap<String, Object> memberMap = new HashMap<String, Object>();
		
		memberMap.put("1", "야호");
		memberMap.put("2", "야호3");
		memberMap.put("3", "야호5");
		
		List<MemberVO> list = new ArrayList<MemberVO>();
		MemberVO node = new MemberVO();
		
		// Node: 1번 생성
		node.setNum(1);
		node.setId("user");
		node.setPasswd("1234");
		node.setAddress("행복시");
		
		list.add(node);
		
		// Node: 2번 생성
		node = new MemberVO();
		
		node.setNum(2);
		node.setId("user2");
		node.setPasswd("2345");
		node.setAddress("행복시2");
		
		list.add(node);
		
		// Node: 3번 생성
		node = new MemberVO();
		
		node.setNum(3);
		node.setId("user3");
		node.setPasswd("3456");
		node.setAddress("행복시3");
		
		list.add(node);
		
		model.addAttribute("title", "method GET");
		model.addAttribute("member", memberVO);
		model.addAttribute("map", memberMap);
		model.addAttribute("list", list);
		
		return "/board/insertResult_get";
	}
	
}
