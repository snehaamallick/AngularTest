myApp.config(function (localStorageServiceProvider) {
  localStorageServiceProvider
    .setPrefix('myApp')
   // .setStorageType('sessionStorage')
    .setNotify(true, true)
});