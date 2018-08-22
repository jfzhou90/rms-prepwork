require('rspec')
require('my_hash')

describe ("MyHash") do
  it('stores a key "joey" with value 1') do
    @test_hash = MyHash.new
    expect(@test_hash.myStore('joey',1)).to(eql(["joey",1]))
  end

  it('fetch a key "joey" with value 1') do
    @test_hash = MyHash.new
    @test_hash.myStore('test',2)
    expect(@test_hash.myFetch('test')).to(eql(["test",2]))
  end
end
