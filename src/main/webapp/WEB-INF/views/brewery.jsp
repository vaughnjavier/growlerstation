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
        <script src="<c:url value="/resources/controllers/beer.js"/>"></script>
        <script src="<c:url value="/resources/controllers/directiveController.js"/>"></script>
        <script src="<c:url value="/resources/controllers/breweryController.js"/>"></script>
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
    <body ng-controller="breweryCtrl">
    <bootstrap-navbar></bootstrap-navbar>

    <div id="breweryPanel" class="panel" style="padding-left: 20px">
        <h3 class="panel-header lead" style="padding-left: 20px;">
            Add Brewery
        </h3>
        <div class="row">
            <div class="col-xs-4">
                <div class="well">
                    <form  name="breweryForm" novalidate ng-submit="addRowAsyncAsJSON(brewery)">
                        <div class="form-group row">
                            <label class="col-xs-12 control-label" for="myname">Name:</label>
                            <input type="text" id="myname" class="form-control" name="myname"
                                   maxlength="32"
                                   ng-model="brewery.name"
                                   required>
                            <div class="error"
                                 ng-show="breweryForm.myname.$invalid && breweryForm.myname.$dirty">
                                <span ng-show="breweryForm.myname.$error.required">
                                    Please enter a value
                                </span>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-xs-12 control-label" for="location">Location:</label>
                            <input type="text" id="Location" class="form-control"
                                   maxlength="50"
                                   ng-model="brewery.location"
                                   required>
                            <div class="error"
                                 ng-show="breweryForm.myname.$invalid && breweryForm.myname.$dirty">
                                <span ng-show="breweryForm.location.$error.required">
                                    Please enter a value
                                </span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-xs-12 control-label" for="url">URL:</label>
                            <input type="url" id="url" name="url" class="form-control"
                                   maxlength="128"
                                   ng-model="brewery.url"
                                   ng-required="true">
                            <div class="error"
                                 ng-show="breweryForm.url.$invalid && breweryForm.url.$dirty">
                                <span ng-show="breweryForm.url.$error.required">
                                    Please enter a value
                                </span>

                                <span ng-show="breweryForm.url.$error.url">
                                    Please enter a valid URL
                                    'http://www.google.com/'
                                </span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-xs-12 control-label">Description:</label>
                            <textarea ng-model="brewery.description" id="description" class="form-control" maxlength="256" ></textarea>
                        </div>
                        <div class="btn-toolbar">
                            <input type="submit" class="btn btn-primary "  ng-disabled="breweryForm.$invalid" value="Add">
                            </input>
                            <input type="reset" class="btn btn-danger">
                            </input>
                        </div>
                    </form>
                </div>

            </div>
            <div class="col-xs-8">
                <div class="form-inline">
                    <div class="form-group" >
                        <label class="control-label" for="searchKeyword">Search:</label>
                        <input type="text" id="searchKeyword" class="form-control"
                               ng-model="q">
                    </div>
                </div>

                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Location</th>
                            <th>Description</th>
                            <th>URL</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr dir-paginate="brewery in data.breweries | filter:q | itemsPerPage: pageSize" current-page="currentPage">
                            <td>{{brewery.name}}</td>
                            <td>{{brewery.location}}</td>
                            <td>{{brewery.description}}</td>
                            <td>{{brewery.url}}</td>
                            <td>
                                <button type="button" class="btn btn-success" ng-hide="readOnly" >
                                    <span class="glyphicon glyphicon-edit"></span>
                                </button>
                                <button type="button" class="btn btn-danger"
                                        ng-hide="readOnly"
                                        ng-disabled=""
                                        ng-click="removeBrewery(brewery)">
                                    <span class="glyphicon glyphicon-remove-circle"></span>
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="text-center">
                    <dir-pagination-controls boundary-links="true" on-page-change="pageChangeHandler(newPageNumber)" template-url="dirPagination.tpl.jsp"></dir-pagination-controls>
                </div>
            </div>
        </div>
    </div>
</body>
</html>