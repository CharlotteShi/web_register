<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
String id = request.getParameter("id");
String a20161128 = request.getParameter("a20161128");//��request�õ� 
String a20161129 = request.getParameter("a20161129");//��request�õ� 
String a20161130 = request.getParameter("a20161130");//��request�õ� 
String department = request.getParameter("department");//��request�õ� 
String doctorname = request.getParameter("doctorname");//��request�õ� 
String rank = request.getParameter("rank");//��request�õ� 
String time = request.getParameter("time");//��request�õ� 
%> 
<%Integer money = (Integer)session.getAttribute("money")-5;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>ʱ�䰡ʱ��</h1>
<h2>��˶���Ϣ,����ԤԼ��������5�����</h2>
  <form action="editDoctor">
ԤԼ���Ҽ�ҽ��:<input type="text" name="doctor" readonly="readonly" value=<%=department%>-<%=doctorname%>><br>
ԤԼʱ��:<input type="text" name="wtime" readonly="readonly" value=<%=time%>><br>
<input type="hidden" name="id" readonly="readonly" value=<%=id%>><br>
<input type="hidden" name="a20161128" readonly="readonly" value=<%=a20161128%>><br>
<input type="hidden" name="a20161129" readonly="readonly" value=<%=a20161129%>><br>
<input type="hidden" name="a20161130" readonly="readonly" value=<%=a20161130%>><br>
<input type="hidden" name="uid_number" readonly="readonly" value=<%=request.getSession().getAttribute("id_number")%>><br>
<input type="hidden" name="money" readonly="readonly" value=<%=money%>><br>
<input type="hidden" name="patientid" readonly="readonly" value=<%=request.getSession().getAttribute("id_number")%>><br>
<input type="hidden" name="rank" readonly="readonly" value=<%=rank%>><br>
<input type="hidden" name="isread" readonly="readonly" value="0"><br>
<input type="submit" value="�ύ"/>
</form>
</body>
</html>