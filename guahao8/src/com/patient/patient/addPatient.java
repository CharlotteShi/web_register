package com.patient.patient;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.patient.action.patientAction;
import com.patient.model.Patient;

public class addPatient {
	
	private Integer uid;
	private String uname;
	private String uid_number;
	private String usex;
	private Date ubirthday;
	private String ublood_type;
	private String umedical_history;
	private String umobile;
	private String uemail;
	private Integer umoney;
	private String umima;
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUid_number() {
		return uid_number;
	}
	public void setUid_number(String uid_number) {
		this.uid_number = uid_number;
	}
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public Date getUbirthday() {
		return ubirthday;
	}
	public void setUbirthday(Date ubirthday) {
		this.ubirthday = ubirthday;
	}
	public String getUblood_type() {
		return ublood_type;
	}
	public void setUblood_type(String ublood_type) {
		this.ublood_type = ublood_type;
	}
	public String getUmedical_history() {
		return umedical_history;
	}
	public void setUmedical_history(String umedical_history) {
		this.umedical_history = umedical_history;
	}
	public String getUmobile() {
		return umobile;
	}
	public void setUmobile(String umobile) {
		this.umobile = umobile;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public Integer getUmoney() {
		return umoney;
	}
	public void setUmoney(Integer umoney) {
		this.umoney = umoney;
	}
	public String getUmima() {
		return umima;
	}
	public void setUmima(String umima) {
		this.umima = umima;
	}
	
	public String execute() throws Exception {
		patientAction action=new patientAction();
		Patient ug=new Patient();
		
		ug.setName(uname);
		ug.setSex(usex);
		ug.setId_number(uid_number);
		ug.setBirthday(ubirthday);
		ug.setBlood_type(ublood_type);
		ug.setMedical_history(umedical_history);
		ug.setMoblie(umobile);
		ug.setEmail(uemail);
		ug.setMoney(umoney);
		ug.setMima(umima);
		action.addPatient(ug);
		uid=ug.getId();
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("id_number", uid_number); 
		session.setAttribute("money", umoney); 
		return "success";
	}

}
