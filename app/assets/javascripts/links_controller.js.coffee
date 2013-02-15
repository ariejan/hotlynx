@LinksIndexCtrl = ["$scope", "Link", ($scope, Link) ->
  $scope.filters = { }

  $scope.links = Link.query()

  $scope.upVote = (link) ->

  $scope.downVote = (link) ->
    alert(link.id)

  $scope.deleteLink = ->
    this.original.destroy ->
      $location.path "/links"

  $scope.addLink = ->
    window.location = "#/links/new";

]

@LinksNewCtrl = ["$scope", "Link", ($scope, Link) ->
  $scope.addLink = ->
    $scope.newLink.votes = 0
    link = Link.save($scope.newLink)
    $scope.links.push(link)
    $scope.newLink = {}

  $scope.cancel = ->
    window.location = "/#links"
]

@LinksEditCtrl = ["$scope", "Link", ($scope, Link) ->

]