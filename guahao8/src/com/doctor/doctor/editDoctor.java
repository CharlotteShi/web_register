package com.doctor.doctor;

import com.doctor.action.doctorAction;
import com.doctor.model.Doctor;
import com.patient.action.ordersAction;
import com.patient.action.patientAction;
import com.patient.model.Orders;
import com.patient.model.Patient;

public class editDoctor {
	
	private Integer id;
	private Integer a20161128;
	private Integer a20161129;
	private Integer a20161130;
	
	private String uid_number;
	private Integer money;
	private Integer rank;
	private String doctor;
	private String wtime;
	private String patientid;
	private String isread;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getA20161128() {
		return a20161128;
	}
	public void setA20161128(Integer a20161128) {
		this.a20161128 = a20161128;
	}
	public Integer getA20161129() {
		return a20161129;
	}
	public void setA20161129(Integer a20161129) {
		this.a20161129 = a20161129;
	}
	public Integer getA20161130() {
		return a20161130;
	}
	public void setA20161130(Integer a20161130) {
		this.a20161130 = a20161130;
	}
	
	public String getUid_number() {
		return uid_number;
	}
	public void setUid_number(String uid_number) {
		this.uid_number = uid_number;
	}
	public Integer getMoney() {
		return money;
	}
	public void setMoney(Integer money) {
		this.money = money;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getWtime() {
		return wtime;
	}
	public void setWtime(String wtime) {
		this.wtime = wtime;
	}
	public String getPatientid() {
		return patientid;
	}
	public void setPatientid(String patientid) {
		this.patientid = patientid;
	}
	public String getIsread() {
		return isread;
	}
	public void setIsread(String isread) {
		this.isread = isread;
	}
	public Integer getRank() {
		return rank;
	}
	public void setRank(Integer rank) {
		this.rank = rank;
	}

	public String execute() throws Exception {
		doctorAction action=new doctorAction();
		Doctor ug=new Doctor();
		ug.setA20161128(a20161128);
		ug.setA20161129(a20161129);
		ug.setA20161130(a20161130);
		ug.setId(id);
		action.editDoctor(ug);
		
		patientAction action2=new patientAction();
		Patient vg=new Patient();
		vg.setId_number(uid_number);
		vg.setMoney(money);
		action2.costPatient(vg);
		
		ordersAction action3=new ordersAction();
		Orders wg=new Orders();
		wg.setDoctor(doctor);
		wg.setWtime(wtime);
		wg.setPatientid(patientid);
		wg.setRank(rank);
		wg.setIsread(isread);
		action3.addOrder(wg);
		
		return "success";
	}

}
