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
<!-- AngularJS 튜토리얼 15 -->

<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<h1 ng-click="myFunction()">Click me!</h1> -->
<!-- 		<h1>{{count}}</h1> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<button ng-click="myFunc()">Click me!</button> -->
		
<!-- 		<div ng-show="showMe"> -->
<!-- 			<h1>Menu:</h1> -->
<!-- 			<div>Pizza</div> -->
<!-- 			<div>Pasta</div> -->
<!-- 			<div>Curry</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
	
	<div ng-app="myApp" ng-controller="myCtrl">
		<h1 ng-mousemove="myFunc($event)">Mouse Over Me!</h1>
		<p>Coordinates: {{x + ' , ' + y}}</p>
	</div>
	
	<script>
		var app = angular.module('myApp',[]);
// 		app.controller('myCtrl', function($scope) {
// 			$scope.count = 0;
// 			$scope.myFunction = function() {
// 				$scope.count ++;
// 			}
// 		});
// 		app.controller('myCtrl', function($scope) {
// 			$scope.showMe = false;
// 			$scope.myFunc = function() {
// 				$scope.showMe = !$scope.showMe;
// 			}
// 		});
		app.controller('myCtrl', function($scope) {
			$scope.myFunc = function(myE) {
				console.log(myE)
				$scope.x = myE.clientX;
				$scope.y = myE.clientY;
			}
		});
	</script>
</body>
</html>