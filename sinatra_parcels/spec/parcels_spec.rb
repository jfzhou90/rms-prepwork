require('rspec')
require('parcels')

describe("Parcels") do
  describe("#volume") do
    it("returns the correct volume for width 2 length 3") do
      parcel = Parcels.new(30, 2, 3, 50)
      expect(parcel.volume).to(eq(6))
    end

    it("returns the correct volume for width 3 length 4") do
      parcel = Parcels.new(30, 3, 4, 50)
      expect(parcel.volume).to(eq(12))
    end
  end

  describe("#shipping_cost") do
    it("returns the correct volume for width 2 length 3") do
      parcel = Parcels.new(30, 2, 3, 50)
      expect(parcel.shipping_cost).to(eq("63.00"))
    end

    it("returns the correct volume for width 2 length 3") do
      parcel = Parcels.new(30, 3, 4, 60)
      expect(parcel.shipping_cost).to(eq("151.20"))
    end
  end
end