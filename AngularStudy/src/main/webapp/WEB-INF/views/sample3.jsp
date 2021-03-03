<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,=">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script type="text/javascript">
	var app = angular.module("myApp", []);
	
// 	app.controller("myCtrl", function($scope) {
// 		$scope.firstName = "NY";
// 		$scope.lastName = "KIM";
// 	});
	app.directive("testDirective", function() {
		return {
			template : "custom directive"
		};
	});
</script>
</head>
<body>
<!-- 	AngularJS 튜토리얼 3 -->
<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		{{firstName + " " + lastName}} -->
<!-- 	</div> -->
	<div ng-app="myApp" test-directive></div>
</body>
</html>