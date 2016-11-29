<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无话可说</title>
</head>
<body>
挂号成功
<form action="searPatient">
返回个人主页
     <input type="hidden" name="uid_number" readonly="readonly" value=<%=request.getSession().getAttribute("id_number")%>><br>
     <input type="submit" value="返回"/> 
</form>
</body>
</html>