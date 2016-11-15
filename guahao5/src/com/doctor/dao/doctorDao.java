package com.doctor.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.doctor.db.DBUtil;
import com.doctor.model.Doctor;
import com.patient.model.Patient;

public class doctorDao {
	
	public List<Doctor> sdepartment(String department) throws Exception//按科室查询医生返回一个列表
	{
		List<Doctor> result=new ArrayList<Doctor>();
		
		Connection conn=DBUtil.getConnection();
		String sql="" +
				" select * from doctor " +
				" where department=? ";
		
		PreparedStatement ptmt=conn.prepareStatement(sql);
		ptmt.setString(1, department);
		ResultSet rs=ptmt.executeQuery();
		
		Doctor g=null;
		while(rs.next()){
			g=new Doctor();
			g.setId(rs.getInt("id"));
			g.setName(rs.getString("name"));
			g.setPic(rs.getString("pic"));
			g.setDepartment(rs.getString("department"));
			g.setGrade(rs.getString("grade"));
			g.setGood_at(rs.getString("good_at"));
			g.setIntroduction(rs.getString("introduction"));
			g.setTime(rs.getDate("time"));
			g.setLeft_number(rs.getInt("left_number"));
			g.setNumber(rs.getInt("number"));
			g.setEmail(rs.getString("email"));
			g.setTelephone(rs.getString("telephone"));
			
			result.add(g);
			}
		
		return result;
	}
	
	public List<Doctor> sname(String name) throws Exception//按姓名查询医生返回一个列表
	{
		List<Doctor> result=new ArrayList<Doctor>();
		
		Connection conn=DBUtil.getConnection();
		String sql="" +
				" select * from doctor " +
				" where name=? ";
		
		PreparedStatement ptmt=conn.prepareStatement(sql);
		ptmt.setString(1, name);
		ResultSet rs=ptmt.executeQuery();
		
		Doctor g=null;
		while(rs.next()){
			g=new Doctor();
			g.setId(rs.getInt("id"));
			g.setName(rs.getString("name"));
			g.setPic(rs.getString("pic"));
			g.setDepartment(rs.getString("department"));
			g.setGrade(rs.getString("grade"));
			g.setGood_at(rs.getString("good_at"));
			g.setIntroduction(rs.getString("introduction"));
			g.setTime(rs.getDate("time"));
			g.setLeft_number(rs.getInt("left_number"));
			g.setNumber(rs.getInt("number"));
			g.setEmail(rs.getString("email"));
			g.setTelephone(rs.getString("telephone"));
			
			result.add(g);
			}
		
		return result;
	}
	
	public Doctor getDoctor(Integer id) throws SQLException{//根据id查询医生单条
		Doctor g=null;
		Connection conn=DBUtil.getConnection();
		String sql=""+" select * from doctor"+
		" where id=?";
		
		PreparedStatement ptmt=conn.prepareStatement(sql);
		//这个语句会把sql语句加载到驱动程序中，但不直接执行，而是当调用execute()方法时使用
	
		ptmt.setInt(1,id);
		ResultSet rs=ptmt.executeQuery();//查询操作
		while(rs.next()){
			g=new Doctor(); 
			g.setId(rs.getInt("id"));
			g.setName(rs.getString("name"));
			g.setPic(rs.getString("pic"));
			g.setDepartment(rs.getString("department"));
			g.setGrade(rs.getString("grade"));
			g.setGood_at(rs.getString("good_at"));
			g.setIntroduction(rs.getString("introduction"));
			g.setTime(rs.getDate("time"));
			g.setLeft_number(rs.getInt("left_number"));
			g.setNumber(rs.getInt("number"));
			g.setEmail(rs.getString("email"));
			g.setTelephone(rs.getString("telephone"));
			
		}
    	return g;
	}
	

}
