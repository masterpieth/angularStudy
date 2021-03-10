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

<!-- Angular 튜토리얼 6 -->
<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 	    <input ng-model="lastname"> -->
<!-- 	    <h1>{{lastname}}</h1> -->
<!-- 	</div> -->
	
	<div ng-app="myApp" ng-controller="myCtrl">
		<h1 ng-click="changeName()">{{firstname}}</h1>
	</div>
	
	<script>
// 		var app = angular.module('myApp', []);
		
// 		app.controller('myCtrl', function($scope) {
// 			$scope.firstname = 'NY';
// 			$scope.lastname = 'KIM';
// 		});

		var app = angular.module('myApp', []);
		
		app.controller('myCtrl', function($scope) {
			$scope.firstname = 'NY';
			$scope.changeName = function () {
				$scope.firstname = 'JS';
			}
		});
	</script>
	
</body>
</html>