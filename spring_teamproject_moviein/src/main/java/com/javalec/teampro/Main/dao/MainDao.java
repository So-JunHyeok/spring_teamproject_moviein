package com.javalec.teampro.Main.dao;

import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.javalec.teampro.MI.dto.MIidcDto;
import com.javalec.teampro.Util.Constant;

public class MainDao {

	DataSource dataSource;

	JdbcTemplate template = null;

	public MainDao() {

		template = Constant.template;
	}


public ArrayList<MIidcDto> weeklymovietop5() {
	// ArrayList<MDto> dtos = null;
	
	String query = "select *from(select rownum rnum, dDate, dTitle, safeFile from movie_introduction_board order by rnum asc) where rnum between 1 and 5 order by rnum asc";
	//SELECT * FROM movie_introduction_board  WHERE ROWNUM >= 12 AND ROWNUM <= 24;
	//select *from(select rownum rnum, dNum from movie_introduction_board order by dNum asc) where rnum between 1 and 12;
	//"select * from movie_introduction_board where rownum >= "+StrRow+" and rownum <= "+EndRow+" ";
	
	return (ArrayList<MIidcDto>)template.query(query, new BeanPropertyRowMapper<MIidcDto>(MIidcDto.class));
	// 데이터를 가져올 커맨드 객체
	
	// return dtos;    
	}











}