require('rspec')
require('contacts')

describe("Contacts") do
  describe("#all") do
    it("return blank array") do
      expect(Contacts.all).to(eq([]))
    end
  end

  describe("#initialize") do
    it("return array with 1 contact") do
      expect(Contacts.all[0].name).to(eq("hi"))
    end
  end

end
