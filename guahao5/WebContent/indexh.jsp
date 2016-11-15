<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>医生个人</title>
</head>
<body>
<h1>医生个人主页</h1>
<img src="${pageContext.request.contextPath}/<s:property value="pic"/>"><br>
姓名：<s:property value="name"/><br>
所在科室：<s:property value="department"/><br>
职称：<s:property value="grade"/><br>
擅长：<s:property value="good_at"/><br>
个人简介：<s:property value="introduction"/><br>
上班时间：<s:property value="time"/><br>
剩余预约名额：<s:property value="left_number"/><br>
已预约人数：<s:property value="number"/><br>
咨询邮箱：<s:property value="email"/><br>
科室电话：<s:property value="telephone"/><br>
</body>
</html>