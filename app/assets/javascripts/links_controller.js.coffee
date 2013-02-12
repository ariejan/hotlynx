@LinksIndexCtrl = ["$scope", "Link", ($scope, Link) ->
  $scope.links = Link.query()

  $scope.upVote = (link) ->
    alert(link.id)

  $scope.downVote = (link) ->
    alert(link.id)

  $scope.deleteLink = ->
    this.original.destroy ->
      $location.path "/links"

]

@LinksNewCtrl = ["$scope", "Link", ($scope, Link) ->
  $scope.addLink = ->
    $scope.newLink.votes = 0
    link = Link.save($scope.newLink)
    $scope.links.push(link)
    $scope.newLink = {}
]

@LinksEditCtrl = ["$scope", "Link", ($scope, Link) ->

]