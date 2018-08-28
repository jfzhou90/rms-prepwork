require('favorite_things')
require('rspec')

describe('Item') do
  describe('#all') do
    it('returns empty array on listing all items') do
      expect(Item.all).to(eq([]))
    end
  end
  
  describe('#save') do
    it('returns 1 item in list after saving an item') do
      Item.new("Test", 1).save
      expect(Item.all.size).to(eq(1))
    end

    it('replaces the item with the same rank') do
      Item.new("Test",1).save
      Item.new("another_test", 1).save
      expect(Item.all[0].name).to(eq("another_test"))
    end

    it('replaces the rank with a different item') do
      Item.new("Test",1).save
      Item.new("another_test", 1).save
      expect(Item.all[0].name).to(eq("another_test"))
    end
  end

  describe("#clear")do
    it('clears all items') do
      Item.new("Test", 1).save
      expect(Item.all.size).to(eq(1))
      Item.clear
      expect(Item.all.size).to(eq(0))
    end
  end

  describe('#sort') do
    it('sorts the list by ranking') do
      Item.new("Rank10", 10).save
      Item.new("Rank3",3).save
      expect(Item.all[0].name).to(eq("Rank10"))
      Item.sort
      expect(Item.all[0].name).to(eq("Rank3"))
    end
  end
end