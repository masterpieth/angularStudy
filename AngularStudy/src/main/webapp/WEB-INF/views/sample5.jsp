<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,=">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<style>
	input.ng-invalid {
		background-color: lightblue;
	}
</style>
</head>
<!-- <body ng-app="myApp"> -->
<body>

<!-- AngularJS 튜토리얼 5 -->

<!-- 	<div ng-controller="myCtrl"> -->
<!-- 		Name : <input type="text" ng-model="name"> -->
<!-- 		<h1>You entered: {{name}}</h1> -->
<!-- 	</div> -->
	
<!-- 	<div ng-controller="myCtrl2"> -->
<!-- 		Name : <input type="text" ng-model="name2" kr-or-jp> -->
<!-- 		<h1>You entered: {{name2}}</h1> -->
<!-- 	</div> -->
	
<!-- 	<form ng-app="" name="myForm"> -->
<!-- 		Email : <input type="email" name="myAddress" ng-model="text"> -->
<!-- 		<span ng-show="myForm.myAddress.$error.email">Not a valid e-mail address</span> -->
<!-- 	</form> -->
	
<!-- 	<form ng-app="" name="myForm" ng-init="myText = 'post@myweb.com'"> -->
<!-- 		Email : -->
<!-- 		<input type="email" name="myAddress" ng-model="myText" required> -->
<!-- 		<br> -->
<!-- 		<h1>Status</h1> -->
<!-- 		<br> -->
<!-- 		{{myForm.myAddress.$valid}} -->
<!-- 		{{myForm.myAddress.$dirty}} -->
<!-- 		{{myForm.myAddress.$touched}} -->
<!-- 	</form> -->
	
	<form ng-app="" name="myForm">
		Enter your name :
		<input name="myName" ng-model="myText" required>
	</form>

	<script>
// 		var app = angular.module('myApp', []);
		
// 		app.controller('myCtrl', function($scope) {
// 			$scope.name = 'NY KIM';
// 		});
		
// 		app.controller('myCtrl2',function($scope) {
// 			$scope.name2 = 'NY KIM';
// 		});
		
// 		app.directive('krOrJp', ['$parse', function($parse) {
// 			return {
// 				priority : 2,
// 				restrict : 'A',
// 				compile : function(element) {
// 					console.log('?');
// 					element.on('compositionstart', function(e) {
// 						e.stopImmediatePropagation();
// 					});
// 				},
// 			};
// 		}]);
	</script>
</body>
</html>