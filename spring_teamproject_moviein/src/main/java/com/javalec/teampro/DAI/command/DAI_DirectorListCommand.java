package com.javalec.teampro.DAI.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.javalec.teampro.DAI.dao.DAI_Dao;
import com.javalec.teampro.DAI.dto.DAI_Dto;

public class DAI_DirectorListCommand implements DAI_Command{
	
	@Override
	public void execute(Model model) {
		
		DAI_Dao dao = new DAI_Dao();
		ArrayList<DAI_Dto> dtos= dao.DAI_dlist();
		System.out.println("으어어엉");
		model.addAttribute("director_list",dtos);
		
	}
	
}
