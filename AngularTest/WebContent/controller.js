myApp.controller('MainCtrl', function($scope, localStorageService) {
  
	
	
	var storageType = localStorageService.getStorageType();
	$scope.localStorageDemo = localStorageService.get('localStorageDemo');
	
	
	
  if(localStorageService.isSupported) {
    
  }
  localStorageService.set('property', 'oldValue');
  $scope.unbind = localStorageService.bind($scope, 'property');

  //Test Changes
  $scope.update = function(val) {
    $scope.property = val;
    $timeout(function() {
      alert("localStorage value: " + localStorageService.get('property'));
    });
  }
  
  var storageType = localStorageService.getStorageType();
  
  function submit(key, val) {
	   return localStorageService.set(key, val);
	  }
  
  function getItem(key) {
	   return localStorageService.get(key);
	   
	  }
  
  var lsKeys = localStorageService.keys();
  
  function removeItem(key) {
	   return localStorageService.remove(key);
	  }
	  //...
	  function removeItems(key1, key2, key3) {
	   return localStorageService.remove(key1, key2, key3);
	  }
	  
	  function clearNumbers(key) {
		   return localStorageService.clearAll(/^\d+$/);
		  }
		  //...
		  function clearAll() {
		   return localStorageService.clearAll();
		  }
 
});
