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

<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		First Name : <input type="text" ng-model="firstName"><br> -->
<!-- 		Last Name : <input type="text" ng-model="lastName"> -->
<!-- 		<br> -->
<!-- 		Full Name : {{firstName + " " + lastName}} -->
<!-- 	</div> -->

<!-- 	<div ng-app="myApp" ng-controller="personCtrl"> -->
<!-- 		First Name : <input type="text" ng-model="firstName"><br> -->
<!-- 		Last Name : <input type="text" ng-model="lastName"> -->
<!-- 		<br> -->
<!-- 		Full Name : {{fullName()}} -->
<!-- 	</div> -->
	
	<div ng-app="myApp" ng-controller="namesCtrl">
		<ul>
			<li ng-repeat="x in names">
				{{x.name + ' : ' + x.country}}
			</li>
		</ul>
	</div>
	
	
	<script>
// 		var app = angular.module('myApp', []);
		
// 		app.controller('myCtrl', function($scope) {
// 			$scope.firstName = 'NY';
// 			$scope.lastName = 'KIM';
// 		});
		
// 		app.controller('personCtrl', function($scope) {
// 			$scope.firstName = 'NY';
// 			$scope.lastName = 'KIM';
// 			$scope.fullName = function () {
// 				return $scope.firstName + " " + $scope.lastName;
// 			};
// 		});
	</script>
	<script src="/resources/js/personController.js" ></script>
	<script src="/resources/js/namesController.js" ></script>
</body>
</html>