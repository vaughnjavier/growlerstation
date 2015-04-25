<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html ng-app="growlerStore">
    <head>
        <title>Beer List</title>
        <script src="<c:url value="/resources/js/angular.js"/>"></script>
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-theme.css"/>" />
        <script>
            angular.module("growlerStore", []);
        </script>
        <script src="<c:url value="/resources/controllers/beer.js"/>"></script>
        <script src="<c:url value="/resources/controllers/directiveController.js"/>"></script>
        <script src="<c:url value="/resources/controllers/beerListControllers.js"/>"></script>
        <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
    </head>
    <body ng-controller="beerCtrl">
    <bootstrap-navbar></bootstrap-navbar>
        <div class="panel" ng-controller="beerListCtrl">
            {{location.path()}}
            <beertable></beertable>
        </div>
    </body>
</html>