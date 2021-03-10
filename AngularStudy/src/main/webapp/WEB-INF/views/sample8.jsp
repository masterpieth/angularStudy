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
<body ng-app="myApp">
<!-- Angular 튜토리얼 8 -->

<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<h1>{{carname}}</h1> -->
<!-- 	</div> -->

<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<input ng-model="name"> -->
<!-- 		<h1>My name is {{name}}</h1> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<ul> -->
<!-- 			<li ng-repeat="x in names">{{x}}</li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
	
	<p>The rootScope`s favorite color : </p>
	<h1>{{color}}</h1>
	
	<div ng-controller="myCtrl">
		<p>The scope of the controller`s favorite color:</p>
		<h1>{{color}}</h1>
	</div>
	
	<p>The rootScope`s favorite color is still: </p>
	<h1>{{color}}</h1>
	
	<script>
// 		var app = angular.module('myApp', []);
// 		app.controller('myCtrl', function($scope) {
// 			$scope.name = 'NY KIM';
// 		});

// 		var app = angular.module('myApp', []);
		
// 		app.controller('myCtrl', function($scope) {
// 			$scope.names = ['NY', 'JS', 'HW'];
// 		});

		var app = angular.module('myApp', []);
		
		app.run(function($rootScope) {
			$rootScope.color = 'blue';
		});
		app.controller('myCtrl', function($scope) {
			$scope.color = 'red';
		});
	</script>


</body>
</html>