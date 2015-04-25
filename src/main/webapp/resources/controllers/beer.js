angular.module("growlerStore").controller("beerCtrl", function ($scope){
    $scope.data = {
        beers: [
            {
                brewery: "Adelberts", name: "Tripel B", size: "16 oz",
                style: "Tripel Belgian", price: "17/8.5/6.5", abv: "9.3%"
            },
            {
                brewery: "Alamo", name: "German Pale Ale", size: "16 oz",
                style: "Golden Ale", price: "15/7.5/5.5", abv: "4.7%"
            },
            {
                brewery: "Alamo", name: "Golden Ale", size: "16 oz",
                style: "Pilsner", price: "15/7.5/ 5.5", abv: "5.2%"
            },
            {
                brewery: "Live Oak", name: "Liberation", size: "16 oz",
                style: "Ipa", price: "17/8.5/6.5", abv: "6.3%"
            },
            {
                brewery: "Free Tail", name: "Witticus", size: "16 oz",
                style: "Double Wit", price: "17/8.5/6.5", abv: "9.3%"
            },
            {
                brewery: "Prairie", name: "Bomb", size: "16 oz",
                style: "Imperial Stout", price: "17/8.5/6.5", abv: "9.3%"
            },
            {
                brewery: "St Arnold", name: "Root Beer", size: "16 oz",
                style: "Root Beer", price: "17/8.5/6.5", abv: "9.3%"
            },
            {
                brewery: "Stone", name: "Tripel B", size: "16 oz",
                style: "Barley Wine", price: "17/8.5/6.5", abv: "9.3%"
            },
            {
                brewery: "Firestone", name: "Union Jack", size: "12 oz",
                style: "Ipa", price: "16/8/6", abv: "7.5%"
            }
        ]
    };
});


