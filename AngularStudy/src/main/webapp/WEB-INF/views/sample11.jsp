<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,=">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
</head>
<body>
<!-- AngularJS 튜토리얼 11 -->

<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<p>Message from server : </p> -->
<!-- 		<h1>{{dataStr}}</h1> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<p>Message from server : </p> -->
<!-- 		<h1>{{content}}</h1> -->
<!-- 		<h1>{{statuscode}}</h1> -->
<!-- 		<h1>{{statustext}}</h1> -->
<!-- 	</div> -->
	<div ng-app="myApp" ng-controller="customerCtrl">
		<ul>
			<li ng-repeat="x in myData">
				{{x.Name + ' : ' + x.Country}}
			</li>
		</ul>
	</div>
	
	<script>
		var app = angular.module('myApp', []);
		
// 		app.controller('myCtrl', function($scope, $http) {
// 			$http.post('/httpTest').then(function(response) {
// 				console.log(response);
// 				$scope.dataStr = response.data;
// 			});
// 		});

// 		app.controller('myCtrl', function($scope, $http) {
// 			$http({
// 				method : 'POST',
// 				url : '/httpTest'
// 			}).then(function mySuccess(response) {
// 				console.log(response);
// 				$scope.dataStr = response.data;
// 			}, function myError(response) {
// 				$scope.dataStr = response.statusText;
// 			});
// 		});
// 		app.controller('myCtrl', function($scope, $http) {
// 			$http.post('/httpTest')
// 			.then(function(response) {
// 				$scope.content = response.data;
// 				$scope.statuscode = response.status;
// 				$scope.statustext = response.statusText;
// 			});
// 		});
// 		app.controller('myCtrl', function($scope, $http) {
// 			$http.post('/nonexisturl')
// 			.then(function(response) {
// 				$scope.content = response.data;
// 			}, function(response) {
// 				$scope.content = "Something went wrong";
// 			});
// 		});
		app.controller('customerCtrl', function($scope, $http) {
			$http.get('https://www.w3schools.com/angular/customers.php')
			.then(function(response) {
				$scope.myData = response.data.records;
			});
		})
	</script>
</body>
</html>