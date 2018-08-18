require('pry')

class String
  def leetspeak
    self.chars.each_with_index.map{|char, index|
      case char
      when 'e'
        '3'
      when 'o'
        '0'
      when 'I'
        '1'
      when 's'
        if index == 0 || self[index-1]==" "
          char
        else
          'z'
        end
      else
        char
      end
    }.join
  end
end
