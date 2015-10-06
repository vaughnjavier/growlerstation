<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html ng-app="growlerStore">
    <head>
        <title>Brewery Console</title>
        <script src="<c:url value="/resources/js/angular.js"/>"></script>
        <script src="<c:url value="/resources/js/dirPagination.js"/>"></script>
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-theme.css"/>" />
        <script>
            angular.module("growlerStore", ['angularUtils.directives.dirPagination']);
        </script>
        <script src="<c:url value="/resources/controllers/directiveController.js"/>"></script>
        <script src="<c:url value="/resources/controllers/beersController.js"/>"></script>
        <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
        <style>
            form .ng-invalid-required.ng-dirty { background-color: lightpink; }
            form .ng-invalid-url { background-color: lightpink; }
            form .ng-invalid-email.ng-dirty { background-color: lightgoldenrodyellow; }
            form .ng-valid.ng-dirty { background-color: lightgreen; }
            span.summary.ng-invalid { color: red; font-weight: bold; }
            span.summary.ng-valid { color: green; }
            div.error {color: red; font-weight: bold;}
        </style>
    </head>
    <body ng-controller="beerCtrl">
    <bootstrap-navbar></bootstrap-navbar>

    <h3 class="panel-header lead" style="padding-left: 20px;">
        Add Beer
    </h3>
    <div id="breweryPanel" class="panel" style="padding-left: 20px">
        <div class="row">
            <div class="col-xs-4">
                <div class="well">
                    <form  name="beerForm" novalidate ng-submit="addRowAsyncAsJSON(beer)">
                        <div class="form-group row">
                            <label class="col-xs-12 control-label" for="name">Name:</label>
                            <input type="text" id="name" class="form-control" >
                        </div>
                        <div class="form-group row">
                            <label class="col-xs-12 control-label" for="brewery">Brewery:</label>
                            <input type="text" id="brewery" class="form-control">
                        </div>
                        <div class="form-group row">
                            <label class="col-xs-12 control-label" for="style">Style:</label>
                            <input type="text" id="style" class="form-control">
                        </div>
                        <div class="form-group row">
                            <label class="col-xs-12 control-label" for="pricing">Pricing:</label>
                            <input type="text" id="pricing" class="form-control">
                        </div>
                        <div class="form-group row">
                            <label class="col-xs-12 control-label" for="pourSize">Pour Size:</label>
                            <input type="text" id="pourSize" class="form-control">
                        </div>
                        <div class="form-group row">
                            <label class="col-xs-12 control-label" for="abv">ABV:</label>
                            <input type="text" id="abv" class="form-control">
                        </div>
                        <div class="form-group row">
                            <label class="col-xs-12 control-label" for="description">Description:</label>
                            <textarea id="description" class="form-control"></textarea>
                        </div>
                        <div class="btn-toolbar">
                            <div class="btn-toolbar">
                                <input type="submit" class="btn btn-primary "  ng-disabled="beerForm.$invalid" value="Add">
                                </input>
                                <input type="reset" class="btn btn-danger">
                                </input>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-xs-8" >
                <beertable></beertable>
            </div>
            <div class="text-center">
                <dir-pagination-controls boundary-links="true" on-page-change="pageChangeHandler(newPageNumber)" template-url="dirPagination.tpl.jsp"></dir-pagination-controls>
            </div>
        </div>
    </div>
</body>
</html>