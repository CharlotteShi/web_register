<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ҽ������</title>
</head>
<body>
<h1>ҽ��������ҳ</h1>
<img src="${pageContext.request.contextPath}/<s:property value="pic"/>"><br>
������<s:property value="name"/><br>
���ڿ��ң�<s:property value="department"/><br>
ְ�ƣ�<s:property value="grade"/><br>
�ó���<s:property value="good_at"/><br>
���˼�飺<s:property value="introduction"/><br>
�ϰ�ʱ�䣺<s:property value="time"/><br>
ʣ��ԤԼ���<s:property value="left_number"/><br>
��ԤԼ������<s:property value="number"/><br>
��ѯ���䣺<s:property value="email"/><br>
���ҵ绰��<s:property value="telephone"/><br>
</body>
</html>