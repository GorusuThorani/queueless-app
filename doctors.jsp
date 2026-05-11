<%@ page import="java.util.*" %>

<html>
<head>
    <title>Doctors</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">

<h2>Doctors in <%= request.getAttribute("hospitalName") %></h2>

<ul>
<%
    List<String> doctors = (List<String>) request.getAttribute("doctorList");


for(String d : doctors) {


%> <li> <a href="token?doctor=<%=d%>"><%= d %></a> </li>
<%
}
%>

</ul>

</div>

</body>
</html>
