<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>付费</title>
</head>

<body>
	<h1>确认预约</h1>
	
	姓名：<s:property value="uname"/> <br>
	手机号码：<s:property value="umobile"/> <br>
	科室：<s:property value="udepartment" /> <br>
	预约日期：<s:property value="udate" /> <br>
	挂号费：<s:property value="umoney"/> <br>
	
	<input type="submit" value="确认预约" />
</body>
</html>