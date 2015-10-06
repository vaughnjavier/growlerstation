angular.module("growlerStore")
    .filter('offset', function() {
        return function(input, start) {
            if(angular.isUndefined(input)){
                return 0;
            }
            start = parseInt(start, 10);
            return input.slice(start);
        };
    })

    .factory('BreweryService', function($rootScope, $http){
        var breweryService = {};
        breweryService.data = {};

        breweryService.getBreweries = function() {
            $http.get('/breweries')
                .success(function (data) {
                    breweryService.data.breweries = data;
                })
                .error(function (error, status) {
                    $scope.data.error = error || "Request failed";
                    $scope.status = status;
                });
            return breweryService.data;
        };
        return breweryService;
    })

    .controller("breweryCtrl", function ($scope, $http, BreweryService){
        // define variables
        $scope.data = {};
        $scope.data = BreweryService.getBreweries();
        $scope.pageSize = 5;
        $scope.currentPage = 1;
        // Add a new row
        $scope.addRowAsyncAsJSON = function(brewery){
            var dataObj = {
                name: brewery.name,
                location: brewery.location,
                description : brewery.description,
                url : brewery.url
            };

            var res = $http.post('/createBrewery', dataObj);
            res.success(function(data, status, headers, config){
                $scope.added = data.name + " has been added";
                brewery.id = data.id;
                $scope.addNewBrewery(brewery);
            });
            res.error(function(data, status, headers, config){
               alert( "failure message: " + JSON.stringify({data: data}));
            });

            $scope.refreshForm();
        };

        $scope.addNewBrewery = function(brewery){
            $scope.data.breweries.push({name:brewery.name, location: brewery.location, description: brewery.description, url: brewery.url, id: brewery.id })
        };

        // refresh a form
        $scope.refreshForm = function(){
            $scope.brewery = {};
            $scope.breweryForm.$setUntouched();
            $scope.breweryForm.$setPristine();
        };

        $scope.removeBrewery = function(brewery){
            if(brewery.id != null) {
                var res = $http.get('/removeBrewery/' + brewery.id);
                res.success(function(data){
                    alert("Brewery with id: " + brewery.id + " was deleted");
                    $scope.deleteBrewery(brewery.name);
                });
                res.error(function(data, status, headers, config){
                    alert( "failure message: " + JSON.stringify({data: data}));
                });

            } else {
                $scope.deleteBrewery(brewery.name);
            }
        };

        // remove a row
        $scope.deleteBrewery = function(name){
            var index = -1;
            var brewArr = eval($scope.data.breweries);
            for(var i = 0; i < brewArr.length ; i++){
                if(brewArr[i].name == name){
                    index = i;
                    break;
                }
            }
            if(index == -1){
                alert("Invalid index");
            }
            $scope.data.breweries.splice(index, 1);
        };

        // functions for pagination




    });
