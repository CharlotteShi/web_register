<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
String id_number = request.getParameter("id_number");//��request�õ� 
%> 
<!DOCTYPE html>
<html>
<head>
<title>����ʱ������ǰ</title>
</head>
<body>
  <h1>�༭����</h1>
  <form action="editPatient">
     
     <label for="uid">Please enter your id</label>
     <input type="text" name="uid" readonly="readonly" value=<%=id_number%>><br>
     
     <label for="umedical_history">Please enter your medical history</label>
     <input type="text" name="umedical_history"/><br>
     
     <label for="umobile">Please enter your mobile</label>
     <input type="number" name="umobile" required="required"/><br>
     
     <label for="uemail">Please enter your email</label>
     <input type="email" name="uemail"/><br>
     <input type="submit" value="�ύ"/>
     <a href="indexd.jsp?id_number=<%=id_number%>"><input type="button" value="����"></a>
     
  </form>
</body>
</html>