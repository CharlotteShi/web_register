package com.book.patient;

import java.sql.SQLException;
import java.util.Date;

import com.book.action.patientAction;
import com.book.dao.patient_homeDao;
import com.book.model.Patient;

public class searPatient {

	private Integer id;
	private String name;
	private String uid_number;
	private String sex;
	private Date birthday;
	private String blood_type;
	private String medical_history;
	private String mobile;
	private String email;
	private Integer money;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getUid_number() {
		return uid_number;
	}

	public void setUid_number(String uid_number) {
		this.uid_number = uid_number;
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
	public Integer getMoney() {
		return money;
	}

	public void setMoney(Integer money) {
		this.money = money;
	}

	public String execute() throws SQLException {
		
		
		patient_homeDao g=new patient_homeDao();
		Patient g1=g.getPatient(uid_number);
		if(g.getPatient(uid_number)!=null){
			//这应该加上输出，比如
			name=g1.getName();
			uid_number=g1.getId_number();
			sex=g1.getSex();
			birthday=g1.getBirthday();
			blood_type=g1.getBlood_type();
			medical_history=g1.getMedical_history();
			mobile=g1.getMobile();
			email=g1.getEmail();
			money=g1.getMoney();
			//g1.toString("name");
			return"success";
		}
		else
			return"fail";
		
		
	}
}
