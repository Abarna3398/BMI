package com.example.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.example.DbConnection.dbConn;
import com.example.bean.BmiBean;
import com.example.bean.BmiHistory;


public class BmiDAOimpl implements BmiDAO{

	PreparedStatement pst=null;
	
	@Override
	public int addUser(BmiBean bmibean) {
		int insert=0;
		
		try {
			 pst= (PreparedStatement) dbConn.getConn().prepareStatement(
			"insert into signup(name,gender,email,phno,password)values('"+bmibean.getName()+"','"+bmibean.getGender()+"','"+bmibean.getEmail()+"','"+bmibean.getPhno()+"','"+bmibean.getPassword()+"')");
			
			insert= pst.executeUpdate();
			dbConn.getConn().close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return insert;

	}

	@Override
	public int addHistory(BmiHistory history) {
		int insert=0;
		
		try {
			 pst= (PreparedStatement) dbConn.getConn().prepareStatement(
			"insert into history(id,email,date,bmi)values('"+history.getId()+"','"+history.getEmail()+"','"+history.getDate()+"','"+history.getBmi()+"')");
			
			insert= pst.executeUpdate();
			dbConn.getConn().close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return insert;

	}
	
	
	
	public List viewHistory(String email) {
		
		List<BmiHistory> list=new ArrayList<BmiHistory>();
		try {
			
			pst= (PreparedStatement) dbConn.getConn().prepareStatement("select date,bmi from history where email='"+email+"'");
			
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				BmiHistory history=new BmiHistory(rs.getDate("date"),rs.getDouble("bmi"));
				list.add(history);
			}
			dbConn.getConn().close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	
	@Override
	public BmiBean getUser(String email) {
		BmiBean bmibean=null;

		try {
			pst= (PreparedStatement) dbConn.getConn().prepareStatement("select * from signup where email = '"+email+"'");
			ResultSet rs=pst.executeQuery();
			
			if(rs.next())
			{
				
				bmibean=new BmiBean(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
				
			}
			dbConn.getConn().close();
		
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
		return bmibean;
		
		
	}

}
