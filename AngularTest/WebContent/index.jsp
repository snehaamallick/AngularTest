<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="height:1500px">

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Contact App</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      </ul>
  </div>
</nav>
<br>
<br>
<br>
<br>

  <div  ng-app="myApp" class="section">
	<div class="container">
<!-- Angular script to generate the productlist and sorting -->
		<!-- ============================================================================================== -->

		<script>
			var c = ${contacts};

			angular.module('repeatSample', []).controller('repeatController',
					function($scope) {
						$scope.contacts = c;

						$scope.sort = function(keyname) {
							$scope.sortKey = keyname; //set the sortKey to the param passed
							$scope.reverse = !$scope.reverse; //if true make it false and vice versa
						}

					});
		</script>

<!-- Textbox used to implement search option using Angular -->
		<!-- ============================================================================================== -->
<div class="bs-component" ng-controller="repeatController">
<div class="container-fluid">
  <div class="row">
    <div class="col-md-6">
   <form class="form-inline">
				<div class="form-group">
					<label>Search</label> <input type="text" ng-model="search"
						class="form-control" placeholder="Search">
				</div>
			</form>
           
  </div>
   <br>
   <div class="col-md-6"><span class="pull-right">
   <div class="row">
    <div class="form-actions floatRight">
    <a href="/AngularTest/screen2.jsp"> <button type=submit>Add</button></a>
      </div>
      </div>
     </span>
     </div>
     </div>
     </div>
			<!-- table to show data coming from the JSON file -->
			<!-- ============================================================================================== -->


			<table class="table table-striped table-hover">
				<thead>
					<tr>

						<!-- Performing sort functionality using angular both in ascending and descending manner -->
						<!-- ============================================================================================== -->

						<th ng-click="sort('title')">Contact List <span
							class="glyphicon sort-icon" ng-show="sortKey=='name'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>

					</tr>
				</thead>
				<tbody>
					<!-- dynamically generating the table data -->
					<!-- ============================================================================================== -->

					<tr
						ng-repeat="contact in contacts|orderBy:sortKey:reverse|filter:search">
						<td>{{blog.name}}</td>
						


						<!-- Info button that maps to the ProductDetails view. Required Info for ProductDetails view is passed through request parameters -->
						<!-- ============================================================================================== -->
					</tr>
				</tbody>
			</table>

		</div>
	</div>
</div>

<script>
        var myApp = angular.module('myApp', ['LocalStorageModule']);

    </script>
    <script src="config.js"></script>
</body>
</html>

