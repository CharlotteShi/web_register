<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
<title>个人主页</title>
</head>
<body onload="javascript:window.alert('注册成功')">
姓名：<s:property value="uname"/><br>
身份证号：<s:property value="uid_number"/><br>
性别：<s:property value="usex"/><br>
出生日期：<s:property value="ubirthday"/><br>
血型：<s:property value="ublood_type"/><br>
既往病史：<s:property value="umedical_history"/><br>
手机号码：<s:property value="umobile"/><br>
邮箱：<s:property value="uemail"/><br>
金币：<s:property value="umoney"/><br>
<a href="indexc.jsp?id_number=<s:property value="uid_number"/>"><input type="button" value="编辑"></a>
</body>
</html>