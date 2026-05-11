<%@ page import="java.util.*" %>

<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">

<h2>Welcome, <%= session.getAttribute("userName") %></h2>

<h3>Your Tokens</h3>

<ul>
<%
    List<String> tokens = (List<String>) request.getAttribute("tokens");


if(tokens != null && tokens.size() > 0) {
    for(String t : tokens) {


%> <li><%= t %></li>
<%
}
} else {
%> <li>No tokens yet</li>
<%
}
%>

</ul>

<br>
<a href="hospitals">Book New Token</a>

</div>

</body>
</html>
