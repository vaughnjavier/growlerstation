angular.module("beerListFilter", [])
    .filter("unique", function(){
        return function (beers, propertyName) {
            if(angular.isArray(beers) && angular.isString(propertyName)){
                var results = [];
                var keys = {};
                for (var i = 0; i < beers.length; i++){
                    var val = beers[i][propertyName];
                    if(angular.isUndefined(keys[val])){
                        keys[val] = true;
                        results.push(val)
                    }
                }
                return results;
            } else {
                return beers;
            }
        }
    });