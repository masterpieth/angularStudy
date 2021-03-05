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

<!-- AngularJS 튜토리얼 4 -->
<!-- 	<div ng-app="" ng-init="firstName='NY'"> -->
	
<!-- 		<p>Name: <input type="text" ng-model="firstName"></p> -->
<!-- 		<p>You Wrote: {{firstName}}</p> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="" ng-init="quantity=1;price=5;"> -->
<!-- 		Quantity: <input type="number" ng-model="quantity"> -->
<!-- 		Costs:	<input type="number" ng-model="price"> -->
		
<!-- 		Total in dollar: {{quantity * price}} -->
<!-- 	</div> -->

<!-- 	<div ng-app="" ng-init="names=['A','B','C']"> -->
<!-- 		<ul> -->
<!-- 			<li ng-repeat="x in names"> -->
<!-- 				{{x}} -->
<!-- 			</li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="" ng-init="names=[ -->
<!-- 		{name:'KIM', country:'Korea'} -->
<!-- 		,{name:'PARK', country:'Japan'} -->
<!-- 		,{name:'Lee', country: 'USA'}]"> -->
<!-- 		<ul> -->
<!-- 			<li ng-repeat="x in names"> -->
<!-- 				{{x.name + ' , ' + x.country}} -->
<!-- 			</li> -->
<!-- 		</ul> -->
<!-- 	</div> -->

	<div ng-app="myApp">
		<test-directive></test-directive>
		<div test-directive></div>
		<div class="test-directive"></div>
		<!-- directive: test-directive -->
	</div>
	
	<script>
		var app = angular.module('myApp', []);
		
		app.directive('testDirective', function() {
			return {
				restrict : 'EM',
				replace : true,
				template : '<h1>New Directive</h1>'
			};
		})
	</script>
</body>
</html>