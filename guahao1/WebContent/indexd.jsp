<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>  
<%@ taglib prefix="s" uri="/struts-tags"%><% 
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
  <h1>编辑成功</h1>
  
  <form action="searPatient">
  
     <label for="uid">Please enter your id</label>
     <input type="text" name="uid" readonly="readonly" value=<%=id_number%>><br>
     <input type="submit" value="点此返回个人主页"/>  
   
  </form>
</body>
</html>