package com.book.patient;

import java.util.Date;

import com.book.action.patientAction;
import com.book.model.Patient;

public class editPatient {
//	
//	private Integer uid;
//	private String uname;
	private String uid_number;
//	private String usex;
//	private Date ubirthday;
//	private String ublood_type;
	private String umedical_history;
	private String umobile;
	private String uemail;

//	public Integer getUid() {
//		return uid;
//	}
//	public void setUid(Integer uid) {
//		this.uid = uid;
//	}
//	public String getUname() {
//		return uname;
//	}
//	public void setUname(String uname) {
//		this.uname = uname;
//	}
	public String getUid_number() {
		return uid_number;
	}
	public void setUid_number(String uid_number) {
		this.uid_number = uid_number;
	}
//	public String getUsex() {
//		return usex;
//	}
//	public void setUsex(String usex) {
//		this.usex = usex;
//	}
//	public Date getUbirthday() {
//		return ubirthday;
//	}
//	public void setUbirthday(Date ubirthday) {
//		this.ubirthday = ubirthday;
//	}
//	public String getUblood_type() {
//		return ublood_type;
//	}
//	public void setUblood_type(String ublood_type) {
//		this.ublood_type = ublood_type;
//	}
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

	
	public String execute() throws Exception {
		patientAction action=new patientAction();
		Patient ug=new Patient();
		
//		ug.setId(uid);
//		ug.setName(uname);
		ug.setId_number(uid_number);
//		ug.setSex(usex);
//		ug.setBirthday(ubirthday);
//		ug.setBlood_type(ublood_type);
		ug.setMedical_history(umedical_history);
		ug.setMoblie(umobile);
		ug.setEmail(uemail);
		action.editPatient(ug);
		return "success";
	}
	
}
