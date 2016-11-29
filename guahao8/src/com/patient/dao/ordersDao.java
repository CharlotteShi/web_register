package com.patient.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.patient.db.DBUtil;
import com.patient.model.Orders;

public class ordersDao {
	
	public void addOrders(Orders g) throws Exception{
		Connection conn=DBUtil.getConnection();
		String sql="" +
				   "insert into orders" +
				   "(doctor,patientid," +
					"wtime,rank,isread)" +
					"values(" +
					"?,?,?,?,?)";
		PreparedStatement ptmt=conn.prepareStatement(sql);
		
		ptmt.setString(1, g.getDoctor());
		ptmt.setString(2, g.getPatientid());
		ptmt.setString(3, g.getWtime());
		ptmt.setInt(4, g.getRank());
		ptmt.setString(5, g.getIsread());
		
		ptmt.execute();
	}
	
	public List<Orders> sOrders(String patientid) throws Exception
	{
		List<Orders> result=new ArrayList<Orders>();
		Connection conn=DBUtil.getConnection();
		String sql="" +
				" select * from orders " +
				" where patientid=? ";
		
		PreparedStatement ptmt=conn.prepareStatement(sql);
		ptmt.setString(1, patientid);
		ResultSet rs=ptmt.executeQuery();
		Orders g=null;
		while(rs.next()){
			g=new Orders();
			g.setDoctor(rs.getString("doctor"));
			g.setWtime(rs.getString("wtime"));
			g.setRank(rs.getInt("rank"));
			result.add(g);
		}
		return result;
	}
	

}
