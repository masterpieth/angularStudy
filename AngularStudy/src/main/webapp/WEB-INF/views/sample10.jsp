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
<!-- AngularJS 튜토리얼 -->
	
<!-- 	<h1 ng-controller="customersCtrl">{{myUrl}}</h1> -->
<!-- 	<h1 ng-controller="myCtrl">{{dataStr}}</h1> -->
	
<!-- 	<h1 ng-app="myApp" ng-controller="myCtrl">{{myHeader}}</h1> -->
	
<!-- 	<h1 ng-app="myApp" ng-controller="myCtrl">{{theTime}}</h1> -->
	
<!-- 	<h1 ng-app="myApp" ng-controller="myCtrl">{{hex}}</h1> -->
	<ul ng-app="myApp" ng-controller="myCtrl">
		<li ng-repeat="x in counts">{{x | myFormat}}</li>
	</ul>
	
	<script>
		var app = angular.module('myApp',[]);
		
// 		app.controller('customersCtrl', function($scope, $location) {
// 			$scope.myUrl = $location.absUrl();
// 		});

// 		app.controller('myCtrl', function($scope, $http) {
// 			$http.post('/httpTest').then(function(response) {
// 				$scope.dataStr = response.data;
// 			});
// 		});
		
// 		app.controller('myCtrl', function($scope, $timeout) {
// 			$scope.myHeader = "Hello there!";
// 			$timeout(function() {
// 				$scope.myHeader = "How are you doing today?";
// 			}, 2000);
// 		});

// 		app.controller('myCtrl', function($scope, $interval) {
// 			$scope.theTime = new Date().toLocaleTimeString();
// 			$interval(function(){
// 				$scope.theTime = new Date().toLocaleTimeString();
// 			},1000);
// 		});
// 		app.controller('myCtrl', function($scope, hexafy) {
// 			$scope.hex = hexafy.myFunc(255);
// 		});
		app.controller('myCtrl', function($scope) {
		    $scope.counts = [255, 251, 200];
		});
		
		app.filter('myFormat', ['hexafy', function(hexafy) {
			return function(x) {
				return hexafy.myFunc(x);
			}
		}]);
		
		app.service('hexafy', function(){
			this.myFunc = function(x) {
				return x.toString(16);
			}
		});
		
	</script>
</body>
</html>