<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
<head>
<title>三更时分柳树前</title>
</head>
<body>
  <h1>你就说虐不虐</h1>
  <form action="addPatient">
     
     <label for="uname">Please enter your name</label>
     <input type="text" name="uname" required="required"/><br>
     
     <label for="uid_number">Please enter your id number</label>
     <input type="text" name="uid_number" required="required"/><br>
     
     <label for="usex">Please enter your sex</label>
     <input type="text" list="sex_list" name="usex" required="required"/><br>
     <datalist id="sex_list">
	 <option value="man" />
	 <option value="woman" />
	 </datalist>
     
     <label for="ubirthday">Please enter your birthday</label>
     <input type="date" name="ubirthday" required="required"/><br>
     
     <label for="ublood_type">Please enter your blood_type</label>
     <input type="text" list="blood_list" name="ublood_type" required="required"/><br>
     <datalist id="blood_list">
	 <option value="A" />
	 <option value="B" />
	 <option value="O" />
	 <option value="AB" />
	 <option value="Rh" />
	 <option value="HLA" />
	 <option value="other" />
	 </datalist>
     
     <label for="umedical_history">Please enter your medical history</label>
     <input type="text" name="umedical_history"/><br>
     
     <label for="umobile">Please enter your mobile</label>
     <input type="number" name="umobile" required="required"/><br>
     
     <label for="uemail">Please enter your email</label>
     <input type="email" name="uemail"/><br>
     <input type="submit" value="set"/>
     
  </form>
</body>
</html>