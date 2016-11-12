package com.book.patient;

import java.sql.SQLException;
import java.util.Date;

import com.book.action.patientAction;
import com.book.dao.patient_homeDao;
import com.book.model.Patient;

public class searPatient {

	private Integer uid;
	private String name;
	private String id_number;
	private String sex;
	private Date birthday;
	private String blood_type;
	private String medical_history;
	private String mobile;
	private String email;
	
	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getId_number() {
		return id_number;
	}

	public void setId_number(String id_number) {
		this.id_number = id_number;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getBlood_type() {
		return blood_type;
	}

	public void setBlood_type(String blood_type) {
		this.blood_type = blood_type;
	}

	public String getMedical_history() {
		return medical_history;
	}

	public void setMedical_history(String medical_history) {
		this.medical_history = medical_history;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String execute() throws SQLException {
		
		
		patient_homeDao g=new patient_homeDao();
		Patient g1=g.getPatient(uid);
		if(g.getPatient(uid)!=null){
			//这应该加上输出，比如
			name=g1.getName();
			id_number=g1.getId_number();
			sex=g1.getSex();
			birthday=g1.getBirthday();
			blood_type=g1.getBlood_type();
			medical_history=g1.getMedical_history();
			mobile=g1.getMobile();
			email=g1.getEmail();
			//g1.toString("name");
			return"success";
		}
		else
			return"fail";
		
		
	}
}
