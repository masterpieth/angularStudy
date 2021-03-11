<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,=">
<style>
/* 	table, th, td { */
/* 		border: 1px solid grey; */
/* 		border-collapse: collapse; */
/* 		padding: 5px; */
/* 	} */
/* 	table tr:nth-child(odd) { */
/* 		background-color: #f1f1f1; */
/* 	} */
/* 	table tr:nth-child(even) { */
/* 		background-color: #ffffff; */
/* 	} */
</style>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
</head>
<body>

<!-- 	<div ng-app="myApp" ng-controller="customerCtrl"> -->
<!-- 		<table> -->
<!-- 			<tr ng-repeat="x in names | orderBy : 'Country'"> -->
<!-- 				<td>{{$index + 1}}</td> -->
<!-- 				<td>{{x.Name}}</td> -->
<!-- 				<td>{{x.Country | uppercase}}</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
<!-- 	</div> -->
	
	<div ng-app="myApp" ng-controller="customerCtrl">
		<table>
			<tr ng-repeat="x in names">
				<td ng-if="$odd" style="background-color: #f1f1f1;">{{x.Name}}</td>
				<td ng-if="$even">{{x.Name}}</td>
				<td ng-if="$odd" style="background-color: #f1f1f1;">{{x.Country}}</td>
				<td ng-if="$even">{{x.Country}}</td>
			</tr>
		</table>
	</div>
	
	
	<script>
		var app = angular.module('myApp', []);
		
		app.controller('customerCtrl', function($scope, $http) {
			$http.get('https://www.w3schools.com/angular/customers.php')
			.then(function(response) {
				$scope.names = response.data.records;
			});
		});
	</script>
	
</body>
</html>