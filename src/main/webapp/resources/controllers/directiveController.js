angular.module("growlerStore")
.directive("bootstrapNavbar", function(){
    return {
        restrict : "E",
        replace: true,
        transclude : true,
        templateUrl: "growlerTemplate.jsp"
    }
})
.directive("beertable", function(){
    return {
        restrict : "E",
        replace: true,
        transclude : true,
        templateUrl: "beerListTemplate.jsp"
    }
});