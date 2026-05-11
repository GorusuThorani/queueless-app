<html>
<head>
    <title>Your Token</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">

<h2>Your Token</h2>

<div class="card">
    <p>Your Token Number</p>
    <div class="token"><%= request.getAttribute("token") %></div>
</div>

<div class="card">
    <p>People Ahead</p>
    <h3><%= request.getAttribute("peopleAhead") %></h3>
</div>

<div class="card">
    <p>Estimated Waiting Time</p>
    <h3><%= request.getAttribute("waitingTime") %> minutes</h3>
</div>

<br>
<a href="hospitals">Back</a>

</div>

</body>
</html>
