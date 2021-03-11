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

<!-- 	<div ng-app="myApp" ng-controller="personCtrl"> -->
<!-- 		<p>The name is {{lastName | lowercase}}</p> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="namesCtrl"> -->
<!-- 		<ul> -->
<!-- 			<li ng-repeat="x in names | orderBy: 'country'"> -->
<!-- 				{{x.name + ' : ' + x.country}} -->
<!-- 			</li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="costCtrl"> -->
<!-- 		<h1>Price : {{price | currency : '₩' : 3}}</h1> -->
<!-- 	</div> -->

<!-- 	<div ng-app="myApp" ng-controller="namesCtrl"> -->
<!-- 		<ul> -->
<!-- 			<li ng-repeat="x in names | filter : 'i'"> -->
<!-- 				{{x}} -->
<!-- 			</li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="namesCtrl"> -->
<!-- 		<p><input type="text" ng-model="test"></p> -->
<!-- 		<ul> -->
<!-- 			<li ng-repeat="x in names | filter : 'test'"> -->
<!-- 				{{x}} -->
<!-- 			</li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<ul> -->
<!-- 			<li ng-repeat="x in customers | filter : {'name' : 'O', 'city' : 'London'}"> -->
<!-- 				{{x.name + ' : ' + x.city}} -->
<!-- 			</li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
<!-- 	<div ng-app="myApp" ng-controller="myCtrl"> -->
<!-- 		<ul> -->
<!-- 			<li ng-repeat="x in customers | filter : 'Lon'"> -->
<!-- 				{{x.name + ' : ' + x.city}} -->
<!-- 			</li> -->
<!-- 		</ul> -->
<!-- 	</div> -->

<!-- 	<div ng-app="myApp" ng-controller="sizeCtrl"> -->
<!-- 		<ul> -->
<!-- 			<li ng-repeat="x in cars | limitTo : 3 : 1">{{x}}</li> -->
<!-- 		</ul> -->
<!-- 	</div> -->

<!-- 	<div ng-app="myApp" ng-controller="sizeCtrl"> -->
<!-- 		<ul> -->
<!-- 			<li ng-repeat="x in cars | limitTo : 3 : 1">{{x}}</li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="sizeCtrl"> -->
<!-- 		<h1>{{txt | limitTo : 3}}</h1> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="sizeCtrl"> -->
<!-- 		<h1>{{phone| limitTo : 3}}</h1> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="namesCtrl"> -->
<!-- 		<p><input type="text" ng-model="test"></p> -->
<!-- 		<ul> -->
<!-- 			<li ng-repeat="x in names | filter : test"> -->
<!-- 				{{x}} -->
<!-- 			</li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp" ng-controller="namesCtrl"> -->
<!-- 		<table border="1" width="50%"> -->
<!-- 			<tr> -->
<!-- 				<th ng-click="orderByMe('name')">Name</th> -->
<!-- 				<th ng-click="orderByMe('country')">Country</th> -->
<!-- 			</tr> -->
<!-- 			<tr ng-repeat="x in names | orderBy: myOrderBy"> -->
<!-- 				<td>{{x.name}}</td> -->
<!-- 				<td>{{x.country}}</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
	
<!-- 	</div> -->
	<ul ng-app="myApp" ng-controller="namesCtrl">
		<li ng-repeat="x in names">
			{{x | myFormat}}
		</li>
	</ul>
	<script>
		var app = angular.module('myApp', []);
		
// 		app.controller('personCtrl', function($scope) {
// 			$scope.lastName = 'KIM';
// 		});

// 		app.controller('namesCtrl', function($scope) {
// 			$scope.names = [
// 				{name : 'NYK', country : 'Korea'},
// 				{name : 'JSP', country : 'Japan'},
// 				{name : 'HWJ', country : 'USA'}
// 			];
// 		});
		
// 		app.controller('costCtrl', function($scope) {
// 			$scope.price = 240000;
// 		});
		
// 		app.controller('namesCtrl', function($scope) {
// 			$scope.names = [
// 				'nyk',
// 				'lky',
// 				'isj',
// 				'ddd',
// 				'igdg',
// 				'dddi'
// 			];
// 		});
		
// 		app.controller('namesCtrl', function($scope) {
// 			$scope.names = [
// 				'nyk',
// 				'lky',
// 				'isj',
// 				'ddd',
// 				'igdg',
// 				'dddi'
// 			];
// 		});
// 		app.controller('myCtrl', function($scope) {
// 			$scope.customers = [
// 				{"name" : "Alfreds Futterkiste", "city" : "Berlin"},
// 		        {"name" : "Around the Horn", "city" : "London"},
// 		        {"name" : "B's Beverages", "city" : "London"},
// 			    {"name" : "Bolido Comidas preparadas", "city" : "Madrid"},
// 			    {"name" : "Bon app", "city" : "Marseille"},
// 			    {"name" : "Bottom-Dollar Marketse" ,"city" : "Tsawassen"},
// 			    {"name" : "Cactus Comidas para llevar", "city" : "Buenos Aires"}
// 			];
// 		});
// 		app.controller('sizeCtrl', function($scope) {
// 			$scope.cars = ["Audi", "BMW", "Dodge", "Fiat", "Ford", "Volvo"];
// 		});
// 		app.controller('sizeCtrl', function($scope) {
// 			$scope.txt = "Hello, welcome to piteh tistory";
// 		});
// 		app.controller('sizeCtrl', function($scope) {
// 			$scope.phone = 123456789;
// 		});
// 		app.controller('namesCtrl', function($scope) {
// 			$scope.names = [
// 		        'Jani',
// 		        'Carl',
// 		        'Margareth',
// 		        'Hege',
// 		        'Joe',
// 		        'Gustav',
// 		        'Birgit',
// 		        'Mary',
// 		        'Kai'
// 		    ];
// 		});
// 		app.controller('namesCtrl', function($scope) {
// 			$scope.names = [
// 			    {name:'Jani',country:'Norway'},
// 			    {name:'Carl',country:'Sweden'},
// 			    {name:'Margareth',country:'England'},
// 			    {name:'Hege',country:'Norway'},
// 			    {name:'Joe',country:'Denmark'},
// 			    {name:'Gustav',country:'Sweden'},
// 			    {name:'Birgit',country:'Denmark'},
// 			    {name:'Mary',country:'England'},
// 			    {name:'Kai',country:'Norway'}
// 			];
			
// 			$scope.orderByMe = function(x) {
// 				return $scope.myOrderBy = x;
// 			}
// 		});

		app.filter('myFormat', function() {
			return function(x) {
				var i, c, txt = '';
				for(i = 0; i < x.length; i++) {
					c = x[i];
					if(i % 2 == 0) {
						c = c.toUpperCase();
					}
					txt += c;
				}
				return txt;
			};
		});
		
		app.controller('namesCtrl', function($scope) {
			  $scope.names = ['Jani', 'Carl', 'Margareth', 'Hege', 'Joe', 'Gustav', 'Birgit', 'Mary', 'Kai'];
		});
	</script>
</body>
</html>