<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>专家团队1</title>
</head>
<body>
<form action="searApartment">

     <label for="department">按科室查询</label>
	  <select name="department">
	  <optgroup label="Swedish Cars">
	    <option value="zhenjiu">zhenjiu</option>
	    <option value="saab">Saab</option>
	  </optgroup>
	  <optgroup label="German Cars">
	    <option value="mercedes">Mercedes</option>
	    <option value="audi">Audi</option>
	  </optgroup>
	</select>
     <input type="submit" value="搜索"/>   
</form>

<form action="searDoctorlist">
     
     <label for="name">按医生姓名查询</label>
     <input type="text" name="name" required="required"/>
     <input type="submit" value="搜索"/>
     
</form>

<form action="searPatient">
返回个人主页
     <input type="hidden" name="uid_number" readonly="readonly" value=<%=request.getSession().getAttribute("id_number")%>><br>
     <input type="submit" value="返回"/> 
</form>
</body>
</html>