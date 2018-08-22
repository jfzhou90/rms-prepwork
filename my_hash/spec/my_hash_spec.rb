require('rspec')
require('my_hash')

describe ("MyHash") do
  before(:each) do
    @test_hash = MyHash.new
  end

  it('stores a key "joey" with value zhou') do
    expect(@test_hash.myStore('joey','zhou')).to(eql(["joey",'zhou']))
  end

  it('fetch a key "test" with value "true"') do
    @test_hash.myStore('test',"true")
    expect(@test_hash.myFetch('test')).to(eql("true"))
  end

  it('return nil if key doesnt exist') do
    expect(@test_hash.myFetch('test2')).to(eql(nil))
  end
end
