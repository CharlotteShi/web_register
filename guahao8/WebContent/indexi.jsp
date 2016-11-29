<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
String id = request.getParameter("id");
String a20161128 = request.getParameter("a20161128");//用request得到 
String a20161129 = request.getParameter("a20161129");//用request得到 
String a20161130 = request.getParameter("a20161130");//用request得到 
String department = request.getParameter("department");//用request得到 
String doctorname = request.getParameter("doctorname");//用request得到 
String rank = request.getParameter("rank");//用request得到 
String time = request.getParameter("time");//用request得到 
%> 
<%Integer money = (Integer)session.getAttribute("money")-5;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>时间啊时间</h1>
<h2>请核对信息,本次预约将消耗您5个金币</h2>
  <form action="editDoctor">
预约科室及医生:<input type="text" name="doctor" readonly="readonly" value=<%=department%>-<%=doctorname%>><br>
预约时间:<input type="text" name="wtime" readonly="readonly" value=<%=time%>><br>
<input type="hidden" name="id" readonly="readonly" value=<%=id%>><br>
<input type="hidden" name="a20161128" readonly="readonly" value=<%=a20161128%>><br>
<input type="hidden" name="a20161129" readonly="readonly" value=<%=a20161129%>><br>
<input type="hidden" name="a20161130" readonly="readonly" value=<%=a20161130%>><br>
<input type="hidden" name="uid_number" readonly="readonly" value=<%=request.getSession().getAttribute("id_number")%>><br>
<input type="hidden" name="money" readonly="readonly" value=<%=money%>><br>
<input type="hidden" name="patientid" readonly="readonly" value=<%=request.getSession().getAttribute("id_number")%>><br>
<input type="hidden" name="rank" readonly="readonly" value=<%=rank%>><br>
<input type="hidden" name="isread" readonly="readonly" value="0"><br>
<input type="submit" value="提交"/>
</form>
</body>
</html>