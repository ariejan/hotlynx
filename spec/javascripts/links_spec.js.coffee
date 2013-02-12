#= require spec_helper

describe "LinksController", ->
  describe "index", ->
    beforeEach ->
      @controller = appYaata.TodoItemsController.create()
    afterEach ->
      @controller.destroy()

    it "adds a new item to the TodoItemsStore", ->
      mock = sinon.mock(Yaata.TodoItem)
      mock.expects "createRecord"
      @controller.new()
      mock.verify()