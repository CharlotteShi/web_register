<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page isELIgnored="false"%>
<% request.getAttribute("orderlist"); %>
<% request.getAttribute("ordersize"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询预约结果</title>
</head>
<body>
<h>挂号历史如下</h><br>
<c:forEach var="orderlist" begin="0" end="${ordersize}"  step="1" items="${orderlist}">
<td> ${orderlist.wtime} </td> 
<td> ${orderlist.doctor} </td> 
<td> ${orderlist.rank} </td><br>

</c:forEach>
<form action="searPatient">
返回个人主页
     <input type="hidden" name="uid_number" readonly="readonly" value=<%=request.getSession().getAttribute("id_number")%>>
     <input type="submit" value="返回"/> 
     
   </form>

</body>
</html>