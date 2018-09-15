package com.javalec.teampro.Main.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.javalec.teampro.MI.dto.MIidcDto;
import com.javalec.teampro.Main.dao.MainDao;

public class Search_IDC_list_Command implements Main_Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String search = request.getParameter("search");
		
		MainDao dao = new MainDao();
		
		ArrayList<MIidcDto> dtos = dao.IDCsearch(search);
		
		model.addAttribute("IDC_list", dtos);
	}

}
