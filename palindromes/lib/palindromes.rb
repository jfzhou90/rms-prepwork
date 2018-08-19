class String
  def is_palindromes?
    if self.length == 1
      return false
    end
    split_string = self.split("")
    reversed_array = []
    split_string.length.times do
      reversed_array.push(split_string.pop)
    end
    self == reversed_array.join
  end
end
