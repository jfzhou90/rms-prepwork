class MyHash
  def initialize()
    @myHash = Array.new(50)
  end

  def hashFunction(key_value_pair)
    key_value_pair.sum % 50
  end

  def myStore(key, value)
    index = hashFunction(key)
    @myHash[index] = [key,value]
  end

  def myFetch(key)
    index = hashFunction(key)
    @myHash[index]
  end
end