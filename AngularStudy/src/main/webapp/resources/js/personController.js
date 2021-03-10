var app = angular.module('myApp', []);

app.controller('myCtrl', function($scope) {
	$scope.firstName = 'NY';
	$scope.lastName = 'KIM';
});

app.controller('personCtrl', function($scope) {
	$scope.firstName = 'NY';
	$scope.lastName = 'KIM';
	$scope.fullName = function () {
		return $scope.firstName + " " + $scope.lastName;
	};
});