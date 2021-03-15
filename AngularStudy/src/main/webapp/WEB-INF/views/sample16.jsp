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
<!-- Angular 튜토리얼 16 -->

<!-- 	<div ng-app="myApp" ng-controller="formCtrl"> -->
<!-- 		<form> -->
<!-- 			First name : <input type="text" ng-model="firstname"> -->
<!-- 		</form> -->
		
<!-- 		<h1>You entered : {{firstname}}</h1> -->
<!-- 	</div> -->
<!-- 	<div ng-app="myApp"> -->
<!-- 		<form> -->
<!-- 			Check to show a header: -->
<!-- 			<input type="checkbox" ng-model="myVar"> -->
<!-- 		</form> -->
<!-- 		<h1 ng-show="myVar">My Header</h1> -->
<!-- 	</div> -->

<!-- 	<div ng-app="myApp"> -->
<!-- 		<form> -->
<!-- 			Pick a topic: -->
<!-- 			<input type="radio" ng-model="myVar" value="dogs">Dogs -->
<!-- 			<input type="radio" ng-model="myVar" value="tuts">Tutorials -->
<!-- 			<input type="radio" ng-model="myVar" value="cats">Cats -->
<!-- 		</form> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp"> -->
<!-- 		<form> -->
<!-- 			Select a topic: -->
<!-- 			<select ng-model="myVar"> -->
<!-- 				<option value=""> -->
<!-- 				<option value="dogs">Dogs -->
<!-- 				<option value="tuts">Tutorials -->
<!-- 				<option value="cats">Cats -->
<!-- 			</select> -->
<!-- 		</form> -->
<!-- 	</div> -->

	<div ng-app="myApp" ng-controller="myCtrl">
		<form novalidate>
			First Name:
			<input type="text" ng-model="user.firstName"><br>
			Last Name:
			<input type="text" ng-model="user.lastName"><br>
			<button ng-click="clear()">RESET</button>
		</form>
		<p>form = {{user}}</p>
		<p>master = {{master}}</p>
	</div>
	
	<script>
		var app = angular.module('myApp', []);
		
// 		app.controller('formCtrl', function($scope) {
// 			$scope.firstname = 'NY';
// 		});
		app.controller('myCtrl', function($scope) {
			$scope.master = {'firstName' : 'John', 'lastName' : 'Doe'}
			$scope.clear = function() {
				$scope.user = angular.copy($scope.master);
			};
			$scope.clear();
		});
	</script>
</body>
</html>