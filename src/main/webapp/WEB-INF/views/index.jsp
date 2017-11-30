<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html>
<head>
	 
	  <meta charset="utf-8" />
	  <meta name="viewport" content="width=device-width, initial-scale=1" />
	  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	   <script src="<c:url value="/resources/js/controller.js" />"></script>
	 
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	  
</head>
<body>
<h3 style="color:black">Desafío Aligare - Angularjs con SpringBoot</h3>
<div class="container" ng-app="app">

	
	<h4 style="color:blue">Agregar producto</h3>
	<div ng-controller="postcontroller">
		<form class="form-horizontal" name="customerForm" ng-submit="submitForm()">
			<div class="form-group">
				<label class="control-label col-sm-2" for="productidID">ProductID:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="productid" id="productidID"
						placeholder="Ingrese ProductID del Producto" ng-model="productid"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="nameID">Nombre:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="name" id="nameID"
						placeholder="Ingrese Nombre Producto" ng-model="name"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="priceID">Precio:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="price" id="priceID"
						placeholder="Ingrese Precio Producto" ng-model="price"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Agregar</button>
				</div>
			</div>
		</form>

		<div class="col-sm-offset-2 col-sm-10">
			<p>{{postResultMessage}}</p>
		</div>
	</div>
	
	<hr style="color: black;" size="10"/>
	<h4 style="color:blue">Eliminar producto</h3>
	<div ng-controller="deletecontroller">
		<form class="form-horizontal" name="customerForm" ng-submit="submitForm()">
			<div class="form-group">
				<label class="control-label col-sm-2" for="productidID">ID a eliminar:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="productiddelete" id="productidIDdelete"
						placeholder="Ingrese ID del Producto a eliminar" ng-model="productiddelete"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Eliminar</button>
				</div>
			</div>
		</form>

	</div>
	
	<hr style="color: black;" size="10"/>
	<h4 style="color:blue">Consultar producto</h3>
	<div ng-controller="findcontroller">
		<form class="form-horizontal" name="customerForm" ng-submit="submitForm()">
			<div class="form-group">
				<label class="control-label col-sm-2" for="productidID">ID a consultar:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="productidsearch" id="productidIDsearch"
						placeholder="Ingrese ID del Producto a buscar" ng-model="productidsearch"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default" ng-click="getfunction()">Buscar</button>
				</div>
			</div>
		</form>
		  <table class="table table-striped" id="tableFind">
		    <thead>
		      <tr>
		        <th>Id</th>
		        <th>Nombre</th>
		        <th>Precio</th>
		        <th>ProductId</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr >
		        <td>{{postResultMessage.id}}</td>
		        <td>{{postResultMessage.name}}</td>
		        <td>{{postResultMessage.price}}</td>
		        <td>{{postResultMessage.productId}}</td>
		      </tr>
		    </tbody>
		  </table>
	</div>
	
	
	<hr style="color: #0056b2;" size="10"/>
	<h4 style="color:blue">Consultar todos los productos</h3>
	<div class="container" ng-controller="getcontroller">
	<button  type="submit" class="btn btn-default" ng-click="getfunction()">Buscar productos</button>
	  <table class="table table-striped" id="tableProducts">
    <thead>
      <tr>
        <th>Id</th>
        <th>Nombre</th>
        <th>Precio</th>
        <th>ProductId</th>
      </tr>
    </thead>
    <tbody>
      <tr ng-repeat="cust in response">>
        <td>{{cust.id}}</td>
        <td>{{cust.name}}</td>
        <td>{{cust.price}}</td>
        <td>{{cust.productId}}</td>
      </tr>
    </tbody>
  </table>
</div>
	
</div>
</body>
</html>