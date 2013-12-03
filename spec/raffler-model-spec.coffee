describe "Raffler Model", ->
   
 describe "Attributes", ->
 
   name = new Raffler.Models.Entry
   
   it "should have default attributes", ->
     expect(name.attributes.name).toBeDefined()
     expect(name.attributes.winner).toBeFalsy()
     
  describe "Raffler collection", ->
    
    entries = new Raffler.Collections.Entries
    
    it "should exist", ->
      expect(Raffler.Collections.Entries).toBeDefined()
      
    it "should use the Raffler model", ->
      expect(entries.model).toEqual Raffler.Models.Entry 