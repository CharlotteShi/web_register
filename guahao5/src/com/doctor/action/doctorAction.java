package com.doctor.action;

import java.sql.SQLException;
import java.util.List;

import com.doctor.dao.doctorDao;
import com.doctor.model.Doctor;

public class doctorAction {
	
	public List<Doctor> sdepartment(String department) throws Exception{
		doctorDao dao=new doctorDao();
		return dao.sdepartment(department);
	}
	
	public List<Doctor> sname(String name) throws Exception{
		doctorDao dao=new doctorDao();
		return dao.sname(name);
	}
	
	public Doctor getDoctor(Integer id) throws SQLException{
		doctorDao g=new doctorDao();
		Doctor g1=g.getDoctor(id);
		return g.getDoctor(id);
	}
	
	
	
//	public static void main(String[] args) throws Exception {
//		
//	doctorDao g=new doctorDao();
//		
//	Doctor g2=g.getDoctor(1);//测试根据id查询医生单条
//	System.out.println(g2.getTelephone());
//	
//	List<Doctor> result=g.sname("litao");//测试“姓名查询医生姓名返回一个列表”
//	List<Doctor> result=g.sdepartment("111");//测试“姓名查询科室返回一个列表”
//	
//	for (int i = 0; i < result.size(); i++) {
//		System.out.println(result.get(i).getId()+
//				":"+result.get(i).getName()+result.get(i).getDepartment());
//	}
//	
//}

}
