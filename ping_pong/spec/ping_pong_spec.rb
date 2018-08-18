require('rspec')
require('ping_pong')
require('pry')

describe('Fixnum #pingpong') do
  it "counts from 1 to a given number" do
    expect(2.pingpong).eql?([1,2])
  end
  it "return 'ping' if it is multiple of 3" do
    expect(3.pingpong).eql?([1, 2, 'ping'])
  end
  it "return 'pong' if it is multiple of 5" do
    expect(5.pingpong).eql?([1, 2, 'ping', 4, 'pong'])
  end
  it "return 'pingpong' if it is multiple of 3 and 5" do
    expect(15.pingpong).eql?([1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'pingpong'])
  end
end