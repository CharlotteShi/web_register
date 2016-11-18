<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>registration</title>
</head>
<body>
	<h1>自助挂号</h1>
	
	<form action="registration">
		<label for="department">科室</label>
			<select name="department">
				<optgroup label="外科">
					<option value="d1">d1</option>
					<option value="d2">d2</option>
				</optgroup>
				<optgroup label="内科">
					<option value="d1">d1</option>
					<option value="d2">d2</option>
				</optgroup>
			</select>
			
		<label for="DATE_Y">日期</label>
			<input type="date" name="DATE_Y" required="required"/><br>
			
		<a href="indexb.jsp"><input type="button" value="查询"/></a>
	</form>
</body>
</html>