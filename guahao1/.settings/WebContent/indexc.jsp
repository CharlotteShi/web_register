<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
String id_number = request.getParameter("id_number");//用request得到 
%> 
<!DOCTYPE html>
<html>
<head>
<title>三更时分柳树前</title>
</head>
<body>
  <h1>编辑界面</h1>
  <form action="editPatient">
     
     <input type="hidden" name="uid_number" readonly="readonly" value=<%=id_number%>><br>
     
     <label for="umedical_history">Please enter your medical history</label>
     <input type="text" name="umedical_history"/><br>
     
     <label for="umobile">Please enter your mobile</label>
     <input type="number" name="umobile" required="required"/><br>
     
     <label for="uemail">Please enter your email</label>
     <input type="email" name="uemail"/><br>
     <input type="submit" value="提交"/>
    
   </form>
     
   <form action="searPatient">
  
     <input type="hidden" name="uid_number" readonly="readonly" value=<%=id_number%>><br>
     <input type="submit" value="返回"/> 
     
   </form>
  
</body>
</html>