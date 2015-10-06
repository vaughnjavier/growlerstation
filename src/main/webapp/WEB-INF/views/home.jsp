<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html ng-app="growlerStore">
    <head>
        <title>Beer List</title>
        <script src="<c:url value="/resources/js/angular.js"/>"></script>
        <script src="<c:url value="/resources/js/dirPagination.js"/>"></script>
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-theme.css"/>" />
        <script>
            angular.module("growlerStore", ['angularUtils.directives.dirPagination']);
        </script>
        <script src="<c:url value="/resources/controllers/directiveController.js"/>"></script>
        <script src="<c:url value="/resources/controllers/beerListController.js"/>"></script>
        <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
    </head>
    <body ng-controller="beerListCtrl">
    <bootstrap-navbar></bootstrap-navbar>
        <div class="panel">
            {{location.path()}}
            <beertable></beertable>
            <div class="text-center">
                <dir-pagination-controls boundary-links="true" on-page-change="pageChangeHandler(newPageNumber)" template-url="dirPagination.tpl.jsp"></dir-pagination-controls>
            </div>
        </div>
    </body>
</html>