package com.javalec.teampro.DAI.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.javalec.teampro.DAI.dao.DAI_Dao;

public class PM_RecommendWriteCommand implements DAI_Command {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object>map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		MultipartHttpServletRequest mtfRequest = (MultipartHttpServletRequest)map.get("mtfRequest");
		
		String dAI_Title = request.getParameter("dAI_Title");
		String dAI_Content = request.getParameter("dAI_Content");
		String dAI_Name = request.getParameter("dAI_Name");
		String safeFile = (String) map.get("safeFile");
		
		DAI_Dao dao = new DAI_Dao();
		dao.requestupload1(dAI_Title, dAI_Content, dAI_Name, safeFile);
	}

}
