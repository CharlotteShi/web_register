<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>  
<%@ taglib prefix="s" uri="/struts-tags"%><% 
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
  <h1>�༭�ɹ�</h1>
  
  <form action="searPatient">
  
     <label for="uid">Please enter your id</label>
     <input type="text" name="uid" readonly="readonly" value=<%=id_number%>><br>
     <input type="submit" value="��˷��ظ�����ҳ"/>  
   
  </form>
</body>
</html>