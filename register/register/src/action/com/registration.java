package action.com;

import java.util.Date;

public class registration {
	
	private String department;
	private Date DATE_Y;
	
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public Date getDATE_Y() {
		return DATE_Y;
	}
	public void setDATE_Y(Date dATE_Y) {
		DATE_Y = dATE_Y;
	}
public String execute() throws Exception {
		
		return "success";
	}
}
