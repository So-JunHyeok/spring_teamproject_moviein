package com.javalec.teampro.MI.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.PreparedStatementSetter;

import com.javalec.teampro.MI.dto.MIidcDto;
import com.javalec.teampro.Util.Constant;


public class MIidcDao {

	DataSource dataSource;
	
	JdbcTemplate template = null;
	
	public MIidcDao() {
		
		template = Constant.template;
	}
	
	public ArrayList<MIidcDto> idcmovielist() {
		// ArrayList<MDto> dtos = null;
		
		String query = "select * from movie_introduction_board order by dNum desc";
		
		return (ArrayList<MIidcDto>)template.query(query, new BeanPropertyRowMapper<MIidcDto>(MIidcDto.class));
		// 데이터를 가져올 커맨드 객체
		
		// return dtos;
	}
	
	public void idcwriter1(final String dTitle ,final String dContent ,final String dRelease) {
		// final을 붙여서 나중에 파라미터 값들이 변경되지 않도록 하지 않기 위해 사용
		template.update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String query = "insert into movie_introduction_board (dNum, dTitle, dContent, dRelease, dHit)" + " values (movie_introduction_board_seq.nextval, ?, ?, ?, 0)";
				PreparedStatement pstmt = con.prepareStatement(query);
				pstmt.setString(1, dTitle);
				pstmt.setString(2, dContent);
				pstmt.setString(3, dRelease);
				
				return pstmt;
			}
		});
	}
	
	public MIidcDto idccontentview(String strNum) {
		idcupHit(strNum);
		
		String query = "select * from movie_introduction_board where dNum = " + strNum;
		return template.queryForObject(query, new BeanPropertyRowMapper<MIidcDto>(MIidcDto.class));
	}
	
	public void idcmodify(final String dNum ,final String dTitle, final String dContent, final String dRelease) {
		
		String query = "update movie_introduction_board set dTitle=?, dContent=?,dRelease=? where dNum=?";
		template.update(query, new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				
				ps.setString(1, dTitle);
				ps.setString(2, dContent);
				ps.setString(3, dRelease);
				ps.setInt(4, Integer.parseInt(dNum));
				
			}
		});
	}
	
	private void idcupHit(final String dNum) {
		
		String query = "update movie_introduction_board set dHit = dHit + 1 where dNum = ?";
		template.update(query, new PreparedStatementSetter() {
			
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				
				ps.setInt(1, Integer.parseInt(dNum));
				
			}
		});
		
	}
	
	public void idcdelete(final String strNum) {
		
		String query = "delete from movie_introduction_board where dNum = ?";
		template.update(query, new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {

				ps.setInt(1, Integer.parseInt(strNum));
				
			}
		});
		
	}
	
}
