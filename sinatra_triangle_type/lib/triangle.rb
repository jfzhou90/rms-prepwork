class Triangle
  def initialize(length_a, length_b, length_c)
    @length_a = length_a.to_i
    @length_b = length_b.to_i
    @length_c = length_c.to_i
  end

  def type
    if (@length_a + @length_b) <= @length_c || (@length_b + @length_c) <= @length_a || (@length_a + @length_c) <= @length_b
      "Not a triangle."
    elsif @length_a == @length_b && @length_a == @length_c
      "Equilateral triangle."
    elsif @length_a == @length_b || @length_a == @length_c || @length_b == @length_c
      "Isosceles triangle."
    else
      "Scalene triangle."
    end
  end
end