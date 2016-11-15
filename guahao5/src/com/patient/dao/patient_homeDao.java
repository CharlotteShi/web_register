package com.patient.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.patient.db.DBUtil;
import com.patient.model.Patient;


public class patient_homeDao {
	
	public void addPatient(Patient g) throws Exception{
		Connection conn=DBUtil.getConnection();
		String sql="" +
				"insert into patient" +
				"(name,sex,id_number,birthday,blood_type,medical_history,mobile," +
				"email,money)" +
				"values(" +
				"?,?,?,?,?,?,?,?,?)";
		PreparedStatement ptmt=conn.prepareStatement(sql);
		
		ptmt.setString(1, g.getName());
 		ptmt.setString(2, g.getSex());
 		ptmt.setString(3, g.getId_number());
 		ptmt.setDate(4, new Date (g.getBirthday().getTime()));
 		ptmt.setString(5, g.getBlood_type());
     	ptmt.setString(6, g.getMedical_history());
     	ptmt.setString(7, g.getMobile());
     	ptmt.setString(8, g.getEmail());
     	ptmt.setInt(9, g.getMoney());
 		ptmt.execute();
	}
	
	
	public void updatePatient(Patient g) throws SQLException{//更新个人信息
		Connection conn=DBUtil.getConnection();
		String sql=""+" update Patient"+
		" set medical_history=?,mobile=?,email=? "+
		" where id_number=? ";
		
		PreparedStatement ptmt=conn.prepareStatement(sql);
		//这个语句会把sql语句加载到驱动程序中，但不直接执行，而是当调用execute()方法时使用
// 		ptmt.setString(1, g.getName());
// 		ptmt.setString(2, g.getSex());
// 		ptmt.setDate(3, new Date (g.getBirthday().getTime()));
// 		ptmt.setString(4, g.getBlood_type());
     	ptmt.setString(1, g.getMedical_history());
     	ptmt.setString(2, g.getMobile());
     	ptmt.setString(3, g.getEmail());
     	ptmt.setString(4, g.getId_number());
 		ptmt.execute();
	}

	public void delPatient(Integer id) throws SQLException{//删除用户
		Connection conn=DBUtil.getConnection();
		String sql=""+" delete from Patient"+
		" where id=?";
		
		PreparedStatement ptmt=conn.prepareStatement(sql);
		//这个语句会把sql语句加载到驱动程序中，但不直接执行，而是当调用execute()方法时使用
	
     	ptmt.setInt(1,id);
 		ptmt.execute();
		
	}
	
	public Patient getPatient(String id_number) throws SQLException{//查询用户
		Patient g=null;
		Connection conn=DBUtil.getConnection();
		String sql=""+" select * from Patient"+
		" where id_number=?";
		
		PreparedStatement ptmt=conn.prepareStatement(sql);
		//这个语句会把sql语句加载到驱动程序中，但不直接执行，而是当调用execute()方法时使用
	
		ptmt.setString(1,id_number);
		ResultSet rs=ptmt.executeQuery();//查询操作
		while(rs.next()){
			g=new Patient(); 
			g.setName(rs.getString("name"));
			g.setSex(rs.getString("sex"));
			g.setId_number(rs.getString("id_number"));
			g.setBirthday(rs.getDate("birthday"));
			g.setBlood_type(rs.getString("blood_type"));
			g.setMedical_history(rs.getString("medical_history"));
			g.setMoblie(rs.getString("mobile"));
			g.setEmail(rs.getString("email"));
			g.setMoney(rs.getInt("money"));
		}
    	return g;
	}
}
