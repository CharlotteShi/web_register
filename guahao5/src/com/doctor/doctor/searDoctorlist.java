package com.doctor.doctor;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.doctor.action.doctorAction;
import com.doctor.model.Doctor;

public class searDoctorlist {
	
	private Integer id;
	private String name;
	private String pic;
	private String department;
	private String grade;
	private String good_at;
	private String introduction;
	private Date time;
	private Integer left_number;
	private Integer number;
	private String email;
	private String telephone;
	private Integer num;//记录医生人数
	
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
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getGood_at() {
		return good_at;
	}
	public void setGood_at(String good_at) {
		this.good_at = good_at;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public Integer getLeft_number() {
		return left_number;
	}
	public void setLeft_number(Integer left_number) {
		this.left_number = left_number;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String execute() throws Exception {
		
		doctorAction action=new doctorAction();
		
		List<Doctor> res=action.sname(name);
		
		num=res.size();
		//把list放到request中
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("size",num);
		request.setAttribute("list",res);
		
		return "success";
	}
}
