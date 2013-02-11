app = angular.module("Hotlynx", ["ngResource"])

app.factory "Link", ["$resource", ($resource) ->
  $resource("/links/:id", {id: "@id"}, {update: {method: "PUT"}})
]