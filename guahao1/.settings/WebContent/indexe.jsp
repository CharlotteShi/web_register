<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>����ʱ������ǰ</title>
</head>
<body>
  <h1>������ҳ</h1>
������<s:property value="name"/><br>
���֤�ţ�<s:property value="uid_number"/><br>
�Ա�<s:property value="sex"/><br>
�������£�<s:property value="birthday"/><br>
Ѫ�ͣ�<s:property value="blood_type"/><br>
������ʷ��<s:property value="medical_history"/><br>
�ֻ����룺<s:property value="mobile"/><br>
���䣺<s:property value="email"/><br>
��ң�<s:property value="money"/><br>
<a href="indexc.jsp?id_number=<s:property value="uid_number"/>"><input type="button" value="�༭"></a>
</body>
</html>