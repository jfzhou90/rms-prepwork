class Parcels
  def initialize(weight, width, length, distance)
    @weight = weight.to_i
    @width = width.to_i
    @length = length.to_i
    @distance = distance.to_i
  end

  def volume
    @width * @length
  end

  def shipping_cost
    "%.2f" % (volume * @weight * @distance * 0.007)
  end
end