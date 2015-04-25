<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html ng-app="growlerStore">
    <head>
        <title>Brewery Console</title>
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
<div id="breweryPanel" class="panel" style="padding-left: 20px">
    <b class="panel-heading h3">Broadway Beer List</b>
    <div class="row">
        <div class="col-xs-6" ng-controller="beersListCtrl">
            <table class="table table-striped">
                <caption><h3>Currently on tap</h3></caption>
                <thead>
                    <tr>
                        <th>Brewery</th>
                        <th>Beer</th>
                        <th></th>
                    </tr>
                </thead>
                <tr>
                    <td>Deschutes</td>
                    <td>Portland Oregon</td>
                    <td>
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove-circle"></span>
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>Deschutes</td>
                    <td>Portland Oregon</td>
                    <td>
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove-circle"></span>
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>Deschutes</td>
                    <td>Portland Oregon</td>
                    <td>
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove-circle"></span>
                        </button>
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-xs-6" ng-controller="beersListCtrl" >
            <table class="table table-striped">
                <caption><h3>Beer List</h3></caption>
                <thead>
                <tr>
                    <th>Brewery</th>
                    <th>Beer</th>
                    <th></th>
                </tr>
                </thead>
                <tr>
                    <td>Deschutes</td>
                    <td>Portland Oregon</td>
                    <td>
                        <button type="button" class="btn btn-success">
                            <span class="glyphicon glyphicon-circle-arrow-left"></span>
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>Deschutes</td>
                    <td>Portland Oregon</td>
                    <td>
                        <button type="button" class="btn btn-success">
                            <span class="glyphicon glyphicon-circle-arrow-left"></span>
                        </button>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>