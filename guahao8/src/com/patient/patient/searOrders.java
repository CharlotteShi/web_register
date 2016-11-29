package com.patient.patient;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.patient.action.ordersAction;
import com.patient.model.Orders;

public class searOrders {
	
	private String doctor;
	private String patientid;
	private String wtime;
	private Integer rank;

	private Integer num;
	
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getPatientid() {
		return patientid;
	}
	public void setPatientid(String patientid) {
		this.patientid = patientid;
	}
	public String getWtime() {
		return wtime;
	}
	public void setWtime(String wtime) {
		this.wtime = wtime;
	}
	public Integer getRank() {
		return rank;
	}
	public void setRank(Integer rank) {
		this.rank = rank;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	
	
	public String execute() throws Exception {
		
		ordersAction action=new ordersAction();
		List<Orders> res=action.sOrder(patientid);
		num=res.size();
		
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("ordersize",num);
		request.setAttribute("orderlist",res);
		return "success";
	}
}

