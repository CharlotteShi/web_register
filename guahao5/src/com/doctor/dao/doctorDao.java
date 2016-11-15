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
	
	public List<Doctor> sdepartment(String department) throws Exception//�����Ҳ�ѯҽ������һ���б�
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
	
	public List<Doctor> sname(String name) throws Exception//��������ѯҽ������һ���б�
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
	
	public Doctor getDoctor(Integer id) throws SQLException{//����id��ѯҽ������
		Doctor g=null;
		Connection conn=DBUtil.getConnection();
		String sql=""+" select * from doctor"+
		" where id=?";
		
		PreparedStatement ptmt=conn.prepareStatement(sql);
		//��������sql�����ص����������У�����ֱ��ִ�У����ǵ�����execute()����ʱʹ��
	
		ptmt.setInt(1,id);
		ResultSet rs=ptmt.executeQuery();//��ѯ����
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
