require('rspec')
require('triangle')

describe("Triangle") do
  describe("#type") do
    it("returns 'Not a triangle.' on 1 1 2") do
      test_triangle = Triangle.new(1, 1, 2)
      expect(test_triangle.type).to(eq("Not a triangle."))
    end

    it("returns 'Equilateral triangle.' on 5 5 5") do
      test_triangle = Triangle.new(5, 5, 5)
      expect(test_triangle.type).to(eq("Equilateral triangle."))
    end

    it("returns 'Isosceles triangle.' on 15 15 5") do
      test_triangle = Triangle.new(15, 15, 5)
      expect(test_triangle.type).to(eq("Isosceles triangle."))
    end

    it("returns 'Isosceles triangle.' on 5 15 15") do
      test_triangle = Triangle.new(5, 15, 15)
      expect(test_triangle.type).to(eq("Isosceles triangle."))
    end

    it("returns 'Isosceles triangle.' on 15 5 15") do
      test_triangle = Triangle.new(15, 5, 15)
      expect(test_triangle.type).to(eq("Isosceles triangle."))
    end

    it("returns 'Scalene triangle.' on 2 3 4") do
      test_triangle = Triangle.new(2, 3, 4)
      expect(test_triangle.type).to(eq("Scalene triangle."))
    end
  end
end