@LinksIndexCtrl = ["$scope", "Link", ($scope, Link) ->
  $scope.links = Link.query()
]

@LinksNewCtrl = ["$scope", "Link", ($scope, Link) ->
  $scope.addLink = ->
    link = Link.save($scope.newLink)
    $scope.links.push(link)
    $scope.newLink = {}
]
