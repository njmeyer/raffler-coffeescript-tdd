class Raffler.Views.EntriesIndex extends Backbone.View
  template:  _.template($('#item-template').html())
  events:
    'click #newvalue': 'createEntry'
    'click #draw': 'drawWinner'
    'click li': 'kill'
  initialize: ->
    @collection.on('sync', @render, this)
    @collection.on('add', @render, this)
    @collection.on('destroy', @render, this)
  render: ->
    # console.log @el
    @$el.html(@template(entries: @collection.toJSON()))
    @
  createEntry: ->
    @collection.create name: $('#new_entry').val()
  drawWinner: ->
    winner = @collection.shuffle()[0]
    if winner
      winner.set(winner: true)
      winner.save()
  kill: (ev) ->
      console.log $(ev.target).attr('id')
      item=@collection.find (model) ->
          model.get("id") is $(ev.target).attr('id')
      item.destroy()

class Raffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'
  initialize: ->
    @collection = new Raffler.Collections.Entries() 
    @collection.fetch()      
  index: ->
    view = new Raffler.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)
  show: (id) ->
    console.log "Entry #{id}"