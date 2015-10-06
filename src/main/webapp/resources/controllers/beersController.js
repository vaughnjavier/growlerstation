angular.module("growlerStore")
    .factory('BeerService', function($rootScope, $http){
        var beerService = {};
        beerService.data = {};

        beerService.getBeer = function() {
            $http.get('/beer')
                .success(function (data) {
                    beerService.data.beer = data;
                })
                .error(function (error, status) {
                    $scope.data.error = error || "Request failed";
                    $scope.status = status;
                });
            return beerService.data;
        };
        return beerService;
    })

    .controller("beerCtrl", function ($scope, $http, BeerService){
        $scope.readOnly = false;
        // define variables
        $scope.data = {};
        $scope.data = BeerService.getBeer();
        $scope.pageSize = 5;
        $scope.currentPage = 1;

        // Add a new row
        $scope.addRowAsyncAsJSON = function(beer){
            var dataObj = {
                name: beer.name,
                brewery: beer.brewery,
                style : beer.style,
                pricing : beer.pricing,
                pourSize : beer.pourSize,
                abv : beer.abv
            };

            var res = $http.post('/createBeer', dataObj);
            res.success(function(data, status, headers, config){
                $scope.added = data.name + " has been added";
                beer.id = data.id;
                $scope.addNewBrewery(brewery);
            });
            res.error(function(data, status, headers, config){
                alert( "failure message: " + JSON.stringify({data: data}));
            });

            $scope.refreshForm();
        };

        $scope.addNewBrewery = function(brewery){
            $scope.data.beer.push({name:beer.name, brewery: beer.brewery, style: beer.style, pricing: beer.pricing, pourSize: beer.pourSize, abv: beer.abv, id: beer.id })
        };

    });