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
2016-11-28 ����ԤԼʣ�����<s:property value="a20161128"/>
<s:if test="a20161128== 0">
<button type="button" disabled="disabled">ԤԼ����</button><br>
</s:if>
<s:elseif test="a20161128!=0">
<a href="indexi.jsp?id=<s:property value="id"/>&a20161128=<s:property value="a20161128-1"/>&a20161129=<s:property value="a20161129"/>&a20161130=<s:property value="a20161130"/>&department=<s:property value="department"/>&doctorname=<s:property value="name"/>&time=2016-11-28&rank=<s:property value="10-a20161128+1"/>"><input type="button" value="�Һ�"></a><br>
</s:elseif>

2016-11-29 ����ԤԼʣ�����<s:property value="a20161129"/>
<s:if test="a20161129== 0">
<button type="button" disabled="disabled">ԤԼ����</button><br>
</s:if>
<s:elseif test="a20161129!=0">
<a href="indexi.jsp?id=<s:property value="id"/>&a20161128=<s:property value="a20161128"/>&a20161129=<s:property value="a20161129-1"/>&a20161130=<s:property value="a20161130"/>&department=<s:property value="department"/>&doctorname=<s:property value="name"/>&time=2016-11-29&rank=<s:property value="10-a20161129+1"/>"><input type="button" value="�Һ�"></a><br>
</s:elseif>

2016-11-30 ����ԤԼʣ�����<s:property value="a20161130"/>
<s:if test="a20161130== 0">
<button type="button" disabled="disabled">ԤԼ����</button><br>
</s:if>
<s:elseif test="a20161130!=0">
<a href="indexi.jsp?id=<s:property value="id"/>&a20161128=<s:property value="a20161128"/>&a20161129=<s:property value="a20161129"/>&a20161130=<s:property value="a20161130-1"/>&department=<s:property value="department"/>&doctorname=<s:property value="name"/>&time=2016-11-30&rank=<s:property value="10-a20161130+1"/>"><input type="button" value="�Һ�"></a><br>
</s:elseif>
��ѯ���䣺<s:property value="email"/><br>
���ҵ绰��<s:property value="telephone"/><br>
</body>
</html>