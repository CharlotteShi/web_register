<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
</head>
<body>
<h1>登录</h1>
  <form action="signPatient">
  <label for="uid_number">Please enter your id number</label>
     <input type="text" name="uid_number" required="required"/><br>
  <label for="uid_number">Please enter your key</label>
	 <input type="password" name="umima" required="required"/><br>
     <input type="submit" value="登录"/>
     <a href="index.jsp"><input type="button" value="注册"></a>
  </form>
  
</body>
</html>