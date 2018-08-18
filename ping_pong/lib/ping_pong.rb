require('pry')

class Fixnum
  def pingpong
    (1..self).map do |number|
      if(number%3==0 && number%5==0)
        'pingpong'
      elsif(number%3==0)
        'ping'
      elsif(number%5==0)
        'pong'
      else
        number
      end
    end
  end
end

