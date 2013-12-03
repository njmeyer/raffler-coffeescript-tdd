// Generated by CoffeeScript 1.6.3
describe("Raffler", function() {
  var item, newLarry, newMoe, raffler;
  raffler = newLarry = newMoe = item = void 0;
  raffler = new Raffler();
  newLarry = new Name(1, "Larry");
  newMoe = new Name(2, "Moe");
  describe("Creating Entries", function() {
    it("Test Case 1: It should be able to create an entry", function() {
      raffler.createEntry(newLarry);
      expect(raffler.totalCount).toEqual(1);
      return expect(raffler.nameExists(newLarry)).toBeTruthy();
    });
    return it("Test Case 2: It should be able to create a second entry", function() {
      raffler.createEntry(newMoe);
      expect(raffler.totalCount).toEqual(2);
      return expect(raffler.nameExists(newMoe)).toBeTruthy();
    });
  });
  describe("Valid New Entries", function() {
    return it("Test Case 3: It should have new entries winner status set to false", function() {
      expect(raffler.winnerStatus(newLarry)).toBeFalsy();
      return expect(raffler.winnerStatus(newMoe)).toBeFalsy();
    });
  });
  describe("Ability to Set Values", function() {
    return it("Test Case 4: It should be able to set the winner status to true", function() {
      raffler.setWinner(newLarry);
      return expect(raffler.winnerStatus(newLarry)).toBeTruthy();
    });
  });
  describe("Reset Model", function() {
    return it("Test Case 5: It should be able to reset all winners", function() {
      return expect(raffler.resetWinners()).toBeTruthy();
    });
  });
  describe("Drawing Winners", function() {
    return it("Test Case 6: It should be able to draw a winner", function() {
      expect(raffler.resetWinners()).toBeTruthy();
      return expect(raffler.drawWinner()).toBeTruthy();
    });
  });
  return describe("Deleting Entries", function() {
    it("Test Case 7: It should be able to delete an entry from the list", function() {
      expect(raffler.deleteEntry(newLarry)).toBeTruthy();
      return expect(raffler.nameExists(newLarry)).toBeFalsy();
    });
    return it("Test Case 8: It should be able to delete a second entry from the list", function() {
      expect(raffler.deleteEntry(newMoe)).toBeTruthy();
      return expect(raffler.nameExists(newMoe)).toBeFalsy();
    });
  });
});
