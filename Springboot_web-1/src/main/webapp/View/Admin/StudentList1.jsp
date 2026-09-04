<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "com.example.demo.entites.*" %>
    <%@ page import= "java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table,th,td{
border:1px solid black;
}

</style>
<body>
   <jsp:include page="common/header.jsp" />
<table>
<tr>
<th>SID</th>
<th>Name</th>
<th>Email</th>
<th>Gender</th>
<th>Course</th>
<th>Password</th>
</tr>
<%--
<%
List<Student> stud_list =(List<Student>) request.getAttribute("stud_list");
for(Student stud : stud_list){
	
	%>
	<tr>
	<td><%=stud.getSid()%></td>
	<td><%=stud.getName() %></td>
	<td><%=stud.getEmail() %></td>
	<td><%=stud.getGender() %></td>
	<td><%=stud.getCourse() %></td>
	<td><%=stud.getPassword()%></td>
	
	</tr>
	
	
	<%
	
}

%>
--%>
<c:forEach var="stud" items="${stud_list}"> 
<tr>
	<td>${stud.sid }</td>
	<td>${stud.name }</td>
	<td>${stud.email }</td>
	<td>${stud.gender }</td>
	<td>${stud.course}</td>
	<td>${stud.password }</td>
 
	
	</tr>

</c:forEach>



</table>
  
</body>
</html>