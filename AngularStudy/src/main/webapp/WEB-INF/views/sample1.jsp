<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sample1</title>
<link rel="icon" href="data:;base64,=">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script type="text/javascript">
	var app = angular.module('myApp', []);
	app.controller('myCtrl', function($scope) {
		$scope.firstName = "KIM";
		$scope.lastName = "NY";
	});
</script>
</head>
<body>

<!-- 	AngularJS 튜토리얼 1 -->
<!-- 	<div ng-app=""> -->
<!-- 		<p>Name : <input type="text" ng-model="name"></p> -->
<!-- 		<p ng-bind="name"></p> -->
<!-- 	</div> -->

<!-- 	<div data-ng-app="" data-ng-init="firstName='KIM'"> -->
<!-- 		<p>The name is <span data-ng-bind="firstName"></span></p> -->
<!-- 	</div> -->

<!-- 	<div ng-app="1"> -->
<!-- 		<p>My first Expression : {{ 5 + 5 }} </p> -->
<!-- 	</div> -->

<!-- 	<div ng-app=""> -->
<!-- 		<p>Name : <input type="text" ng-model="name"> -->
<!-- 		<p>{{name}}</p> -->
<!-- 	</div> -->

	<div ng-app="myApp" ng-controller="myCtrl">
		First Name : <input type="text" ng-model="firstName"> <br>
		Last Name : <input type="text" ng-model="lastName"> <br>
		<br>
		Full Name : {{ firstName + " " + lastName }}
	</div>

</body>
</html>