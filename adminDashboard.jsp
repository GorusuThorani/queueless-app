<html ng-app="adminApp">
<head>
    <title>Admin Dashboard</title>

    <!-- CSS -->
    <link rel="stylesheet" href="css/style.css">

    <!-- AngularJS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>

<body ng-controller="adminController">

<div class="container">

    <h2> Admin Panel - Token Management</h2>

    <button class="call-btn" ng-click="callNext()">Call Next Token</button>

    <table>
        <tr>
            <th>Token</th>
            <th>Doctor</th>
            <th>Status</th>
            <th>Action</th>
        </tr>

        <tr ng-repeat="t in tokens"
            ng-class="{'served': t.status=='served', 'waiting': t.status=='waiting'}">

            <td>{{t.token_number}}</td>
            <td>{{t.doctor_name}}</td>
            <td>{{t.status}}</td>
            <td>
                <button class="serve-btn" ng-click="updateStatus(t.id)">
                    Mark Served
                </button>
            </td>
        </tr>
    </table>

</div>

<script>
var app = angular.module("adminApp", []);

app.controller("adminController", function($scope, $http) {

    $http.get("GetTokensServlet").then(function(response) {
        $scope.tokens = response.data;
    });

    $scope.updateStatus = function(id) {
        $http.get("UpdateTokenServlet?id=" + id).then(function() {
            location.reload();
        });
    };

    $scope.callNext = function() {
        $http.get("CallNextServlet").then(function() {
            location.reload();
        });
    };

});
</script>

</body>
</html>