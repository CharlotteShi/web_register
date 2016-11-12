package com.book.action;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import com.book.dao.patient_homeDao;
import com.book.model.Patient;


public class patientAction {
	
	public void addPatient(Patient g) throws Exception{
		patient_homeDao dao=new patient_homeDao();
		dao.addPatient(g);
	}
	
	public void editPatient(Patient g) throws Exception{//编辑用户信息
		patient_homeDao dao=new patient_homeDao();
		dao.updatePatient(g);
	}
	
	public Patient getPatient(String id_number) throws SQLException{//查询用户
		patient_homeDao g=new patient_homeDao();
		Patient g1=g.getPatient(id_number);
		return g.getPatient(id_number);
		
	}
	
	public void delPatient(Integer id) throws SQLException{//删除用户
		patient_homeDao dao=new patient_homeDao();
		dao.delPatient(id);
	}
	
//	public static void main(String[] args) throws Exception {
//        //测试更新功能
//		patient_homeDao g=new patient_homeDao();
//		Patient g1=new Patient();
//		g1.setId(1);
//		g1.setName("王小二");
//		g1.setSex(1);
//		g1.setBirthday(new Date(2015,3,23));
//		g1.setBlood_type(2);
//		g1.setMedical_history("没毛病");
//		g1.setMoblie("12345678901");
//		g1.setEmail("123456789@qq.com");
//		g1.setIsdel(1);
//		g.updatePatient(g1);
		
		//测试查询功能
//		Patient g2=g.getPatient(1);
//		System.out.println(g2.getMobile());
		
		//测试删除功能
//		g.delPatient(1);
//	}


}
