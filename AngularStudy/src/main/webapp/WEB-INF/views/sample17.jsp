<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 	input.ng-invalid { */
/* 		background-color: pink; */
/* 	} */
/* 	input.ng-valid { */
/* 		background-color: lightgreen; */
/* 	} */
	
/* 	form.ng-pristine { */
/* 		background-color: lightblue; */
/* 	} */
/* 	form.ng-dirty { */
/* 		background-color: pink; */
/* 	} */
</style>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
</head>
<body>
	
<!-- 	<div ng-app="myApp"> -->
<!-- 		<form name="myForm"> -->
<!-- 			<input name="myInput" ng-model="myInput" required> -->
<!-- 			<input name="myInput" ng-model="myInput" type="email"> -->
<!-- 		</form> -->
		
<!-- 		<p>The input`s valid state is : </p> -->
<!-- 		<h1>{{myForm.myInput.$valid}}</h1> -->
<!-- 	</div> -->
	
<!-- 	<div ng-app="myApp"> -->
<!-- 		<form name="myForm"> -->
<!-- 			<p>Name : -->
<!-- 				<input name="myName" ng-model="myName" required> -->
<!-- 				<span ng-show="myForm.myName.$touched && myForm.myName.$invalid">The name is required</span> -->
<!-- 			</p> -->
			
<!-- 			<p>Address: -->
<!-- 				<input name="myAddress" ng-model="myAddress" required> -->
<!-- 			</p> -->
<!-- 		</form> -->
<!-- 	</div> -->
<!-- 	<div ng-app="myApp"> -->
<!-- 		<form name="myForm"> -->
<!-- 			<input name="myName" ng-model="myName" required> -->
<!-- 		</form> -->
<!-- 	</div> -->
<!-- 	<div ng-app="myApp"> -->
<!-- 		<form name="myForm"> -->
<!-- 			<input name="myName" ng-model="myName" required> -->
<!-- 		</form> -->
<!-- 	</div> -->

<!-- 	<div ng-app="myApp"> -->
<!-- 		<form name="myForm"> -->
<!-- 			<input name="myInput" ng-model="myInput" required my-directive> -->
<!-- 		</form> -->
<!-- 		<p>The input`s valid state is : </p> -->
<!-- 		<h1>{{myForm.myInput.$valid}}</h1> -->
<!-- 	</div> -->

	<div ng-app="myApp" ng-controller="validateCtrl">
		<form name="myForm" novalidate>
			<p>Username : <br>
				<input type="text" name="user" ng-model="user" required>
				<span style="color: red;" ng-show="myForm.user.$dirty && myForm.user.$invalid">
					<span ng-show="myForm.user.$error.required">Username is required</span>
				</span>
			</p>
			<p>Email : <br>
				<input type="email" name="email" ng-model="email" required>
				<span style="color: red;" ng-show="myForm.email.$dirty && myForm.email.$invalid">
					<span ng-show="myForm.email.$error.required">Email address is required</span>
					<span ng-show="myForm.email.$error.email">Invalid email address</span>
				</span>
			</p>
			
			<p>
				<input type="submit" ng-disabled="myForm.user.$dirty && myForm.user.$invalid || myForm.email.$dirty && myForm.email.$invalid">
			</p>
		</form>
	</div>
	
	<script>
		var app = angular.module('myApp', []);
		app.directive('myDirective' , function() {
			return {
				require : 'ngModel',
				link : function(scope, element, attr, mCtrl) {
					function myValidation(value) {
						if(value.indexOf('e') > -1) {
							mCtrl.$setValidity('charE', true);
						} else {
							mCtrl.$setValidity('charE', false);
						}
						return value;
					}
					mCtrl.$parsers.push(myValidation);
				}
			}
		});
		
		app.controller('validateCtrl', function($scope) {
			$scope.user = 'NYK';
			$scope.email = 'email@email.com';
		});
	</script>
</body>
</html>