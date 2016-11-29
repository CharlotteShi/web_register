package com.patient.action;

import java.util.List;

import com.patient.dao.ordersDao;
import com.patient.model.Orders;

public class ordersAction {
	
	public void addOrder(Orders g) throws Exception{
		ordersDao dao=new ordersDao();
		dao.addOrders(g);
	}
	
	public List<Orders> sOrder(String patientid) throws Exception{
		ordersDao dao=new ordersDao();
		return dao.sOrders(patientid);
	}
	
//	public static void main(String[] args) throws Exception{
//		ordersDao g=new ordersDao();
//		Orders g1=new Orders();
//		
//		g1.setDoctor("5556");
//		g1.setPatientid("3456789065");
//		g1.setWtime("2011-10-09");
//		g1.setIsread("0");
//		g.addOrder(g1);
//	}

}
