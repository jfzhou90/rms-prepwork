class Array
  def queen_attack?(opponent)
    self[0] == opponent[0] || self[1] == opponent[1] || (self[0] - opponent[0].abs) == (self[1] - opponent[1].abs)
  end
end
