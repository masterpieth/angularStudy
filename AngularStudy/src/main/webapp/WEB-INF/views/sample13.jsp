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
<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<select ng-model="selectedName" ng-options="x for x in names"></select> -->
<!-- 		<select> -->
<!-- 			<option ng-repeat="x in names">{{x}}</option> -->
<!-- 		</select> -->
<!-- 	</div> -->
<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<select ng-model="selectedCar"> -->
<!-- 			<option ng-repeat="x in cars" value="{{x.model}}">{{x.model}}</option> -->
<!-- 		</select> -->
<!-- 		<h1>You selected : {{selectedCar}}</h1> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<select ng-model="selectedCar"> -->
<!-- 			<option ng-repeat="x in cars" ng-value="{{x}}">{{x.model}}</option> -->
<!-- 		</select> -->
<!-- 		<h1>You selected : {{selectedCar.model}} {{selectedCar.color}}</h1> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<select ng-model="selectedCar" ng-options="x.model for x in cars"> -->
<!-- 		</select> -->
<!-- 		<h1>You selected : {{selectedCar.model}} {{selectedCar.color}}</h1> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<select ng-model="selectedCar" ng-options="x for (x, y) in cars"></select> -->
<!-- 		<h1>You selected: {{selectedCar}}</h1> -->
<!-- 	</div> -->
	
	<div ng-app="myApp" ng-controller="myCtrl">
		<select ng-model="selectedCar" ng-options="y.brand for (x, y) in cars"></select>
		<h1>You selected: {{selectedCar.brand}}</h1>
		<h1>Model: {{selectedCar.model}}</h1>
		<h1>Color: {{selectedCar.color}}</h1>
	</div>
	
	<script>
		var app = angular.module('myApp', []);
		
// 		app.controller('myCtrl', function($scope) {
// 			$scope.names = ['Emil', 'Tobias', 'Linus'];
// 		});

// 		app.controller('myCtrl', function($scope) {
// 			$scope.cars = [
// 				{model : 'Ford Mustang', color : 'red'},
// 				{model : 'Fiat 500', color : 'white'},
// 				{model : 'Volvo XC90', color : 'black'}
// 			];
// 		});
		
// 		app.controller('myCtrl', function($scope) {
// 			$scope.cars = {
// 				car01 : 'Ford',
// 				car02 : 'Fiat',
// 				car03 : 'Volvo'
// 			};
// 		});

		app.controller('myCtrl', function($scope) {
			$scope.cars = {
				car01 : {brand : "Ford", model : "Mustang", color : "red"},
				car02 : {brand : "Fiat", model : "500", color : "white"},
				car03 : {brand : "Volvo", model : "XC90", color : "black"}
			};
		});
	</script>
</body>
</html>