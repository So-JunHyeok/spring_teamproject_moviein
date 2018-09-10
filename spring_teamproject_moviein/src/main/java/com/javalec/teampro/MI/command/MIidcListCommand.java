package com.javalec.teampro.MI.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.javalec.teampro.MI.dao.MIidcDao;
import com.javalec.teampro.MI.dto.MIidcDto;


public class MIidcListCommand implements MIidcCommand {

	@Override
	public void execute(Model model) {

		
		
		MIidcDao dao = new MIidcDao();
		ArrayList<MIidcDto> dtos = dao.idcmovielist();
		model.addAttribute("idcmovielist", dtos);
		
	}

}
