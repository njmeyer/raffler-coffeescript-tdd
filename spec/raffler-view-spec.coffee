describe "Raffler View", ->

  names_data = [
    {
      id: 1
      name: 'Larry'
      winner: false
    },
    {
      id: 2
      name: 'Moe'
      winner: false
    },
    {
      id: 3
      name: 'Curly'
      winner: false
    }
  ]
  
  invisible_table = document.createElement 'table'
  
  beforeEach ->
    @names_collection = new Raffler.Collections.Entries names_data
    @names_view = new Raffler.Views.EntriesIndex
      collection: @names_collection
      el: invisible_table
      
  it "should be defined", ->
    expect(Raffler.Views.EntriesIndex).toBeDefined()
    
  it "should have the right element", ->
    expect(@names_view.el).toEqual invisible_table
    
  it "should have the right collection", ->
    expect(@names_view.collection).toEqual @names_collection
    
  it "should render when an element is added to the collection", ->
    @names_collection.add
      name: 'Billy'
    expect($(invisible_table).children().length).toEqual 4