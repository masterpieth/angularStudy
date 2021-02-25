<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sample1</title>
<link rel="icon" href="data:;base64,=">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
</head>
<body>

	<div ng-app="">
		<p>Name : <input type="text" ng-model="name"></p>
		<p ng-bind="name"></p>
	</div>
	<div ng-app="" ng-init="firstName='KIM'">
		<p>The name is <span ng-bind="firstName"></span></p>
	</div>
</body>
</html>