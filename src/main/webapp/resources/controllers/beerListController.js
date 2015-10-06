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

    .controller("beerListCtrl", function ($scope, $http, BeerService){
        $scope.readOnly = true;

        // define variables
        $scope.data = {};
        $scope.data = BeerService.getBeer();
        $scope.pageSize = 30;
        $scope.currentPage = 1;
    });