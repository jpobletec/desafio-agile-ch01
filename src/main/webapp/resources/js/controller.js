var app = angular.module('app', []);

app.controller('postcontroller', function($scope, $http, $location) {
	

	$scope.submitForm = function(){
		
		if (  $("#productidID").val() == "")
		{
			alert("Ingrese productID de producto");
			return false;
		}
		if (  $("#nameID").val() == "")
		{
			alert("Ingrese nombre de producto");
			return false;
		}
		
		if ( $.isNumeric( $("#priceID").val()) == false)
			{
				alert("Ingrese precio numerico");
				return false;
			}
		var url = $location.absUrl() + "/api/product/new";
		
		var data = {
			"productId" : $scope.productid,	
            "name": $scope.name,
            "price": parseInt($scope.price)
        };
		
		$http.post(url, data).then(function (response) {
			
			$scope.postResultMessage = response.data;
			alert ("Producto ingresado");
		}, function error(response) {
			$scope.postResultMessage = "Error with status: " +  response.statusText;
		});
		
		$scope.productid = "";
		$scope.name = "";
		$scope.price = "";
	}
});


app.controller('deletecontroller', function($scope, $http, $location) {
	

	$scope.submitForm = function(){
		
		if (  $("#productidIDdelete").val() == "")
		{
			alert("Ingrese productID de producto");
			return false;
		}
		
		var url = $location.absUrl() + "/api/product/delete/"+$scope.productiddelete;

		$http.delete(url).then(function (response) {
			
			$scope.postResultMessage = response.data;
			alert ("Producto eliminado");
		}, function error(response) {
			$scope.postResultMessage = "Error with status: " +  response.statusText;
		});
		

	}
});

app.controller('findcontroller', function($scope, $http, $location) {
	

	$scope.submitForm = function(){
		
		if (  $("#productidIDsearch").val() == "")
		{
			alert("Ingrese productID de producto");
			return false;
		}
		
		var url = $location.absUrl() + "/api/product/"+$scope.productidsearch;
		
		$http.get(url).then(function (response) {
			console.log(response.data);
			if (response.data == ""){
				alert("Producto no encontrado.");
				return false;
			}
			$("#tableFind").show();
			$scope.postResultMessage = response.data;
		
		}, function error(response) {
			$scope.postResultMessage = "Error with status: " +  response.statusText;
		});
		

	}
});

app.controller('getcontroller', function($scope, $http, $location) {
	$scope.getfunction = function(){
		var url = $location.absUrl() + "/api/products";
	
		$http.get(url).then(function (response) {
			$scope.response = response.data
		}, function error(response) {
			$scope.postResultMessage = "Error with status: " +  response.statusText;
		});
	}
});

$( document ).ready(function() {
	$("#tableFind").hide();
});
