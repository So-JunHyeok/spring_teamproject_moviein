package com.javalec.teampro.DAI.controller;

import java.io.File;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.javalec.teampro.DAI.command.DAI_Command;
import com.javalec.teampro.DAI.command.DAI_DirectorListCommand;
import com.javalec.teampro.DAI.command.DAI_DirectorViewCommand;
import com.javalec.teampro.DAI.command.DAI_DirectorWriteCommand;
import com.javalec.teampro.DAI.command.DAI_PeopleListCommand;
import com.javalec.teampro.DAI.command.DAI_PeopleViewCommand;
import com.javalec.teampro.DAI.command.DAI_PeopleWriteCommand;
import com.javalec.teampro.DAI.command.PM_RecommendListCommand;
import com.javalec.teampro.DAI.command.PM_RecommendViewCommand;
import com.javalec.teampro.DAI.command.PM_RecommendWriteCommand;
import com.javalec.teampro.Util.Constant;

@Controller
public class DAI_Controller {
	
	private static final String UPLOAD_PATH = "C:\\upload_test";
	
	DAI_Command command = null;
	
	public JdbcTemplate template;
	
	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}
	
	
	@RequestMapping("/recommend_list")
	public String recommend_list(Model model) {
		
		command = new PM_RecommendListCommand();
		command.execute(model);
		
		return "recommend_list";
	}
	@RequestMapping("/people_list")
	public String people_list(Model model) {
		
		command = new DAI_DirectorListCommand();
		command.execute(model);
		command = new DAI_PeopleListCommand();
		command.execute(model);
		
		
		return "people_list";
	}

	@RequestMapping("/people_view")
	public String people_view(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		command = new DAI_PeopleViewCommand();
		command.execute(model);
		return "people_view";
	}
	@RequestMapping("/director_view")
	public String director_view(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		command = new DAI_DirectorViewCommand();
		command.execute(model);
		return "director_view";
	}


	@RequestMapping("/recommend_view")
	public String recommend_view(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		command = new PM_RecommendViewCommand();
		command.execute(model);
		
		return "recommend_view";
	}
	@RequestMapping("/write_view")
	public String write_view(Model model) {
		
		return "write_view";
	}
	@RequestMapping("/peo_write_view")
	public String peo_write_view(Model model) {
		
		return "peo_write_view";
	}
	@RequestMapping("/dir_write_view")
	public String dir_write_view(Model model) {
		
		return "dir_write_view";
	}
	@RequestMapping(value = "requestupload1")
    public String requestupload1(MultipartHttpServletRequest mtfRequest, Model model,HttpServletRequest request) {
		Iterator<String> fileNames = mtfRequest.getFileNames();		//내가함
		String src = mtfRequest.getParameter("src");
		System.out.println("getFile : " + mtfRequest.getFile("safeFile"));
        System.out.println("src value : " + src);
        System.out.println("fileNames : " + fileNames);
        MultipartFile mf = mtfRequest.getFile("safeFile");
		
        String path = "C:\\upload_test\\";

        String originFileName = mf.getOriginalFilename(); // 원본 파일 명
        long fileSize = mf.getSize(); // 파일 사이즈
        
        System.out.println("originFileName : " + originFileName);
        System.out.println("fileSize : " + fileSize);

        String safeFile = path + System.currentTimeMillis() + originFileName;
        
        System.out.println("safeFile : " + safeFile);
        model.addAttribute("safeFile",safeFile);
        model.addAttribute("request",request);
		command = new PM_RecommendWriteCommand();
		command.execute(model);
        
        try {
            mf.transferTo(new File(safeFile));
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "redirect:recommend_list";
    }
	@RequestMapping(value = "requestupload2")
	public String requestupload2(MultipartHttpServletRequest mtfRequest, Model model,HttpServletRequest request) {
		Iterator<String> fileNames = mtfRequest.getFileNames();		//내가함
		String src = mtfRequest.getParameter("src");
		System.out.println("getFile : " + mtfRequest.getFile("safeFile"));
		System.out.println("src value : " + src);
		System.out.println("fileNames : " + fileNames);
		MultipartFile mf = mtfRequest.getFile("safeFile");
		
		String path = "C:\\upload_test\\";
		
		String originFileName = mf.getOriginalFilename(); // 원본 파일 명
		long fileSize = mf.getSize(); // 파일 사이즈
		
		System.out.println("originFileName : " + originFileName);
		System.out.println("fileSize : " + fileSize);
		
		String safeFile = path + System.currentTimeMillis() + originFileName;
		
		System.out.println("safeFile : " + safeFile);
		model.addAttribute("safeFile",safeFile);
		model.addAttribute("request",request);
		command = new DAI_PeopleWriteCommand();
		command.execute(model);
		
		try {
			mf.transferTo(new File(safeFile));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:people_list";
	}
	
	@RequestMapping(value = "requestupload3")
	public String requestupload3(MultipartHttpServletRequest mtfRequest, Model model,HttpServletRequest request) {
		Iterator<String> fileNames = mtfRequest.getFileNames();		//내가함
		System.out.println("getFile : " + mtfRequest.getFile("safeFile"));
		System.out.println("fileNames : " + fileNames);
		MultipartFile mf = mtfRequest.getFile("safeFile");
		
		String path = "C:\\upload_test\\";
		
		String originFileName = mf.getOriginalFilename(); // 원본 파일 명
		long fileSize = mf.getSize(); // 파일 사이즈
		
		System.out.println("originFileName : " + originFileName);
		System.out.println("fileSize : " + fileSize);
		
		String safeFile = path + System.currentTimeMillis() + originFileName;
		
		System.out.println("safeFile : " + safeFile);
		model.addAttribute("safeFile",safeFile);
		model.addAttribute("request",request);
		command = new DAI_DirectorWriteCommand();
		command.execute(model);
		
		try {
			mf.transferTo(new File(safeFile));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:people_list";
	}
}
