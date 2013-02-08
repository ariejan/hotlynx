app = angular.module("Hotlynx", ["ngResource"])

app.factory "Link", ["$resource", ($resource) ->
  $resource("/links/:id", {id: "@id"}, {update: {method: "PUT"}})
]

@HotlynxCtrl = ["$scope", "Link", ($scope, Link) ->
  $scope.links = Link.query()

  $scope.addLink = ->
    link = Link.save($scope.newLink)
    $scope.links.push(link)
    $scope.newLink = {}
]