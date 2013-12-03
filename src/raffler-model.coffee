class Raffler.Models.Entry extends Backbone.Model
  defaults: 
    name: null
    winner: false

class Raffler.Collections.Entries extends Backbone.Collection
  model: Raffler.Models.Entry
  localStorage: new Store("backbone-coffee-raffle")