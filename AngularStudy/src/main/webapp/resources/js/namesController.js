angular.module('myApp', []).controller('namesCtrl',
function($scope) {
	$scope.names = [
		{name : 'NY' , country : 'Korea'},
		{name : 'JS' , country : 'Japan'},
		{name : 'HW' , country : 'USA'}
	];
});