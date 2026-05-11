<%@ page import="java.util.*" %>

<html>
<head>
    <title>Hospitals</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">

<h3>Welcome, <%= session.getAttribute("userName") %></h3>

<h2>Select Hospital</h2>

<ul>
<%
    List<String> hospitals = (List<String>) request.getAttribute("hospitalList");


for(String h : hospitals) {


%> <li> <a href="doctors?hospital=<%=h%>"><%= h %></a> </li>
<%
}
%>

</ul>

</div>

</body>
</html>
