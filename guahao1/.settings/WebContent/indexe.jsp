<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>三更时分柳树前</title>
</head>
<body>
  <h1>个人主页</h1>
姓名：<s:property value="name"/><br>
身份证号：<s:property value="uid_number"/><br>
性别：<s:property value="sex"/><br>
出生年月：<s:property value="birthday"/><br>
血型：<s:property value="blood_type"/><br>
既往病史：<s:property value="medical_history"/><br>
手机号码：<s:property value="mobile"/><br>
邮箱：<s:property value="email"/><br>
金币：<s:property value="money"/><br>
<a href="indexc.jsp?id_number=<s:property value="uid_number"/>"><input type="button" value="编辑"></a>
</body>
</html>