<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
</head>
<body>
	<!-- Angular 튜토리얼 14 -->

<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<p> -->
<!-- 			<button ng-disabled="mySwitch">Click Me!</button> -->
<!-- 		</p> -->
<!-- 		<p> -->
<!-- 			<input type="checkbox" ng-model="mySwitch">Button -->
<!-- 		</p> -->
		
<!-- 		<p> -->
<!-- 			{{mySwitch}} -->
<!-- 		</p> -->
<!-- 	</div> -->
<!-- 	<div ng-app="myApp"> -->
<!-- 		<p ng-show="true">I am visible.</p> -->
<!-- 		<p ng-show="false">I am not visible.</p> -->
<!-- 	</div> -->
	<div ng-app="myApp" ng-controller="myCtrl">
		<p ng-show="hour > 10">I am visible</p>
	</div>
	
	<script>
		var app = angular.module('myApp', []);
		
// 		app.controller('myCtrl', function($scope) {
// 			$scope.mySwitch = true;
// 		});
		app.controller('myCtrl', function($scope) {
			$scope.hour = 11;
		});

	</script>
</body>
</html>