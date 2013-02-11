@LinksOverviewCtrl = ["$scope", "Link", ($scope, Link) ->
  $scope.links = Link.query()

  $scope.addLink = ->
    link = Link.save($scope.newLink)
    $scope.links.push(link)
    $scope.newLink = {}
]