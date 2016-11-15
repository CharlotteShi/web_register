package com.patient.patient;

import java.sql.SQLException;

import com.patient.action.patientAction;

public class delPatient {

	private Integer did;
	public Integer getDid() {
		return did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}


	public String execute() throws SQLException{
		
		patientAction action=new patientAction();
		action.delPatient(did);
		return"success";
		
	}
}
