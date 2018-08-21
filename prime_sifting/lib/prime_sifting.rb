class Fixnum
  def prime_sifting
    primes = (2..self).to_a
    (2..Math.sqrt(self)).each do |factor|
      primes.delete_if{|number| number != factor && number%factor == 0}
    end
    primes
  end

  def prime_sifting
    (2..self).reject do |current_number|
      (2..Math.sqrt(current_number)).any? {|number| current_number % number == 0}
    end
  end

end
