<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    
<%
String a_1 = request.getParameter("a_1");
session.setAttribute("a_1",a_1);
String a_2 = request.getParameter("a_2");
session.setAttribute("a_2",a_2);
String a_3 = request.getParameter("a_3");
session.setAttribute("a_3",a_3);
String a_4 = request.getParameter("a_4");
session.setAttribute("a_4",a_4);
String a_5 = request.getParameter("a_5");
session.setAttribute("a_5",a_5);
String a_6 = request.getParameter("a_6");
session.setAttribute("a_6",a_6);
String a_7 = request.getParameter("a_7");
session.setAttribute("a_7",a_7);
String a_8 = request.getParameter("a_8");
session.setAttribute("a_8",a_8);
String a_9 = request.getParameter("a_9");
session.setAttribute("a_9",a_9);
String a_10 = request.getParameter("a_10");
session.setAttribute("a_10",a_10);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>测试结果</title>
</head>
<body>
<h1>
<%

 int a_11=Integer.parseInt((String)session.getAttribute("a_1"));
 int a_22=Integer.parseInt((String)session.getAttribute("a_2"));
 int a_33=Integer.parseInt((String)session.getAttribute("a_3"));
 int a_44=Integer.parseInt((String)session.getAttribute("a_4"));
 int a_55=Integer.parseInt((String)session.getAttribute("a_5"));
 int a_66=Integer.parseInt((String)session.getAttribute("a_6"));
 int a_77=Integer.parseInt((String)session.getAttribute("a_7"));
 int a_88=Integer.parseInt((String)session.getAttribute("a_8"));
 int a_99=Integer.parseInt((String)session.getAttribute("a_9"));
 int a_110=Integer.parseInt((String)session.getAttribute("a_10"));
 
 
 int l11=a_11+a_22+a_33+a_44+a_55+a_66+a_77+a_88+a_99+a_110;


if(l11>=60){
	out.print("心脏功能差。潜伏不少致病因素，除了在生活方面注意外，还应去医院做进一步检查");
}else
	if(l11>=30 && l11<60){
		out.print("心脏功能中等。能从事一般工作劳动，如能避免精神紧张，不吸烟，不酗酒，饮食适度，防止肥胖，经常参加体育锻炼，定期进行体格检查，心脏功能还会不断增强");
	}else
		if(l11<30){
			out.print("您的心脏功能正常，请继续保持规律的生活方式，并在平时做适当的体育锻炼");
		}
out.print("!");
 
%>
</h1>
</body>
</html>