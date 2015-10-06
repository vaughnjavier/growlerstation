<table class="table table-striped">
    <thead>
    <tr>
        <th>Brewery</th>
        <th>Name</th>
        <th>Style</th>
        <th>64oz / 32 oz / Single</th>
        <th>Pour Size</th>
        <th>ABV %</th>
    </tr>
    </thead>
    <tbody>
    <tr dir-paginate="beer in data.beer | itemsPerPage: pageSize" current-page="currentPage">
        <td>{{beer.brewery}}</td>
        <td>{{beer.name}}</td>
        <td>{{beer.style}}</td>
        <td>{{beer.pricing}}</td>
        <td>{{beer.pourSize}} oz</td>
        <td>{{beer.abv}}%</td>
        <td>
            <button type="button" class="btn btn-success" ng-hide="readOnly">
                <span class="glyphicon glyphicon-edit"></span>
            </button>
        </td>
        <td>
            <button type="button" class="btn btn-danger" ng-hide="readOnly">
                <span class="glyphicon glyphicon-remove-circle"></span>
            </button>
        </td>
    </tr>
    </tbody>
</table>