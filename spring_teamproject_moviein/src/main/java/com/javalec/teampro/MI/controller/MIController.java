package com.javalec.teampro.MI.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javalec.teampro.MI.command.MICommand;
import com.javalec.teampro.MI.command.MIContentCommand;
import com.javalec.teampro.MI.command.MIDeleteCommand;
import com.javalec.teampro.MI.command.MIListCommand;
import com.javalec.teampro.MI.command.MIModifyCommand;
import com.javalec.teampro.MI.command.MIModify_ViewCommand;
import com.javalec.teampro.MI.command.MIWriteCommand;
import com.javalec.teampro.MI.command.MIidcCommand;
import com.javalec.teampro.MI.command.MIidcContentCommand;
import com.javalec.teampro.MI.command.MIidcDeleteCommand;
import com.javalec.teampro.MI.command.MIidcListCommand;
import com.javalec.teampro.MI.command.MIidcModifyCommand;
import com.javalec.teampro.MI.command.MIidcModify_ViewCommand;
import com.javalec.teampro.MI.command.MIidcWriteCommand;
import com.javalec.teampro.Util.Constant;



@Controller
public class MIController {
	
	MICommand command;
	MIidcCommand idccommand;
	
	public JdbcTemplate template;

	@Autowired // 자동으로 객체 빈이 생성되서 위에 template로 할당이 된다
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template; // 이렇게 하면 데이터베이스에 접근하기 위한 설정은 끝
	}
	
	@RequestMapping("/header")
	public String header() {
		
		return "header";
	}
	@RequestMapping("/footer")
	public String footer() {
		
		return "footer";
	}
	
	@RequestMapping("/MImovielist")	// 게시글 목록
	public String movielist(Model model) {
		System.out.println("MImovielist");
		
		command = new MIListCommand();
		command.execute(model);
		idccommand = new MIidcListCommand();
		idccommand.execute(model);
		
		return "MImovielist";
	}
	
	@RequestMapping("/MImovieview")	// 게시글 상세보기
	public String movieview(HttpServletRequest request, Model model) {
		System.out.println("MImovieview");
		
		model.addAttribute("request", request);
		command = new MIContentCommand();
		command.execute(model);
		
		return "MImovieview";
	}
	@RequestMapping("/MIidcmovieview")	// 게시글 상세보기
	public String idcmovieview(HttpServletRequest request, Model model) {
		System.out.println("MIidcmovieview");
		
		model.addAttribute("request", request);
		idccommand = new MIidcContentCommand();
		idccommand.execute(model);
		
		return "MIidcmovieview";
	}
	
	@RequestMapping("/MIwriter1_view")	// 게시글 작성폼
	public String writer_view(Model model) {
		System.out.println("MIwriter1_view");
		
		
		return "MIwriter1_view";
	}
	
	@RequestMapping("/MIidcwriter1_view")	// 게시글 작성폼
	public String idcwriter_view(Model model) {
		System.out.println("MIidcwriter1_view");
		
		
		return "MIidcwriter1_view";
	}
	
	@RequestMapping("/MIwriter1")	// 게시글 작성 데이터 처리
	public String writer1(HttpServletRequest request, Model model) {
		System.out.println("MIwriter1");
		
		model.addAttribute("request", request);
		command = new MIWriteCommand();
		command.execute(model);
		
		
		return "redirect:MImovielist";
	}
	@RequestMapping("/MIidcwriter1")	// 게시글 작성 데이터 처리
	public String idcwriter1(HttpServletRequest request, Model model) {
		System.out.println("MIidcwriter1");
		
		model.addAttribute("request", request);
		idccommand = new MIidcWriteCommand();
		idccommand.execute(model);
		
		
		return "redirect:MImovielist";
	}
	
	@RequestMapping(value="/MImodify_view", method=RequestMethod.GET)	// 게시글 수정
	public String write1_modify(HttpServletRequest request, Model model) {
		System.out.println("MImodify_view");
		
		model.addAttribute("request", request);
		command = new MIModify_ViewCommand();
		command.execute(model);
		
		
		return "MImodify_view";
	}
	
	@RequestMapping(value="/MIidcmodify_view", method=RequestMethod.GET)	// 게시글 수정
	public String idcwrite1_modify(HttpServletRequest request, Model model) {
		System.out.println("MIidcmodify_view");
		
		model.addAttribute("request", request);
		idccommand = new MIidcModify_ViewCommand();
		idccommand.execute(model);
		
		
		return "MIidcmodify_view";
	}
	
	@RequestMapping("/MImodify")
	public String modify(HttpServletRequest request, Model model) {
	System.out.println("MImodify");
	
	model.addAttribute("request", request);
	command = new MIModifyCommand();
	command.execute(model);
	
	return "redirect:MImovielist";
	}
	
	@RequestMapping("/MIidcmodify")
	public String idcmodify(HttpServletRequest request, Model model) {
	System.out.println("MIidcmodify");
	
	model.addAttribute("request", request);
	idccommand = new MIidcModifyCommand();
	idccommand.execute(model);
	
	return "redirect:MImovielist";
	}
	
	@RequestMapping("MIdelete")	// 게시글 삭제
	public String delete(HttpServletRequest request, Model model) {
		System.out.println("MIdelete");
		
		model.addAttribute("request", request);
		command = new MIDeleteCommand();
		command.execute(model);
		
		return "redirect:MImovielist";
	}
	
	@RequestMapping("MIidcdelete")	// 게시글 삭제
	public String idcdelete(HttpServletRequest request, Model model) {
		System.out.println("MIidcdelete");
		
		model.addAttribute("request", request);
		idccommand = new MIidcDeleteCommand();
		idccommand.execute(model);
		
		return "redirect:MImovielist";
	}
}
