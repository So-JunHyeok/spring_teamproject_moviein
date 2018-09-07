package com.javalec.teampro.DAI.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.javalec.teampro.DAI.dao.DAI_Dao;
import com.javalec.teampro.DAI.dto.DAI_Dto;

public class DAI_PeopleListCommand implements DAI_Command{
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		DAI_Dao dao = new DAI_Dao();
		ArrayList<DAI_Dto>dtos = dao.DAI_plist();
		
		model.addAttribute("people_list",dtos);
		
	}
}
