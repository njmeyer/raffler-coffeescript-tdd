class Raffler

  constructor: ->
    @names = []
    @totalCount = 0
    
  createEntry: (id, name, winner = false) ->
    @names.push {
      id
      name
      winner
    }
    
    @totalCount++
  
  deleteEntry: (name) ->
    for entry in @names
      if entry.id.id is name.id
        nameLoc = @getNameIndex name
        @names.splice(nameLoc, 1)
        return true
    false
  
  getNameIndex: (name) ->
    count = 0
    for entry in @names
      return count if entry.id.id is name.id
      count++
    -1
    
  nameExists: (name) ->
    for entry in @names
      return true if entry.id.id is name.id and entry.id.name is name.name
    false
    
  winnerStatus: (name) ->
    for entry in @names
      return true if entry.id.id is name.id and entry.id.winner is true
    false
    
  setWinner: (name) ->
    for entry in @names
      if entry.id.id is name.id
        entry.id.winner = true
    for entry in @names
      return true if entry.id.id is name.id and entry.id.winner is true
    false
    
  resetWinners: ->
    for entry in @names
      entry.id.winner = false
    for entry in @names
      return true if entry.id.winner is false
    false
    
  drawWinner: ->
    winner = @names.shuffle()[0]
    if winner
      winner.winner = true
      return true
    false
    
  do -> Array::shuffle ?= ->
    for i in [@length-1..1]
      j = Math.floor Math.random() * (i + 1)
      [@[i], @[j]] = [@[j], @[i]]
    @ 
      
window.Raffler = Raffler