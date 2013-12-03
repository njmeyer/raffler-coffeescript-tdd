describe "Raffler", ->
  
  raffler = newLarry = newMoe = item = undefined
  raffler = new Raffler()
  newLarry = new Name(1, "Larry")
  newMoe = new Name(2, "Moe")

  describe "Creating Entries", ->
    it "Test Case 1: It should be able to create an entry", ->
      raffler.createEntry newLarry
      expect(raffler.totalCount).toEqual 1
      expect(raffler.nameExists(newLarry)).toBeTruthy()
    
    it "Test Case 2: It should be able to create a second entry", ->
      raffler.createEntry newMoe
      expect(raffler.totalCount).toEqual 2
      expect(raffler.nameExists(newMoe)).toBeTruthy()
      
  describe "Valid New Entries", ->
    it "Test Case 3: It should have new entries winner status set to false", ->
      expect(raffler.winnerStatus(newLarry)).toBeFalsy()
      expect(raffler.winnerStatus(newMoe)).toBeFalsy()
    
  describe "Ability to Set Values", ->
    it "Test Case 4: It should be able to set the winner status to true", ->
      raffler.setWinner newLarry
      expect(raffler.winnerStatus(newLarry)).toBeTruthy()
      
  describe "Reset Model", ->
    it "Test Case 5: It should be able to reset all winners", ->
      expect(raffler.resetWinners()).toBeTruthy()
      
  describe "Drawing Winners", ->
    it "Test Case 6: It should be able to draw a winner", ->
      expect(raffler.resetWinners()).toBeTruthy()
      expect(raffler.drawWinner()).toBeTruthy()
      
  describe "Deleting Entries", ->
    it "Test Case 7: It should be able to delete an entry from the list", ->
      expect(raffler.deleteEntry(newLarry)).toBeTruthy()
      expect(raffler.nameExists(newLarry)).toBeFalsy()
      
    it "Test Case 8: It should be able to delete a second entry from the list", ->
      expect(raffler.deleteEntry(newMoe)).toBeTruthy()
      expect(raffler.nameExists(newMoe)).toBeFalsy()
  