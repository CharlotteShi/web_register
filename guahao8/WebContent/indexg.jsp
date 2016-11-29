<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page isELIgnored="false"%>
<% request.getAttribute("list"); %>
<% request.getAttribute("size"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>专家团队结果</title>
</head>
<body>
太虐了

<c:forEach var="list" begin="0" end="${size}"  step="1" items="${list}">
<form action="searDoctor">
<input type="hidden" name="id" readonly="readonly" value="${list.id}">
<input type="image" name="submit" src="${pageContext.request.contextPath}/${list.pic}"> 
</form>
<td> ${list.name} </td> 
<td> ${list.grade} </td> 
<td> ${list.good_at} </td> <br>
</c:forEach>

</body>
</html>