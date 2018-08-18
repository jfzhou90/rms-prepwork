require('rspec')
require('clock_angle')

describe('String#clock_angle') do
  it('returns 0 degree on 12:00') do
    expect("12:00".clock_angle).to(eq(0))
  end

  it('returns 5.5 degree on 12:01') do
    expect("12:01".clock_angle).to(eq(5.5))
  end

  it('returns 165 degree on 12:30') do
    expect("12:30".clock_angle).to(eq(165))
  end

  it('returns 30 degree on 1:00') do
    expect("1:00".clock_angle).to(eq(30))
  end

  it('returns 24.5 degree on 1:01') do
    expect("1:01".clock_angle).to(eq(24.5))
  end

  it('returns 135 degree on 1:30') do
    expect("1:30".clock_angle).to(eq(135))
  end

  it('returns 142.5 degree on 1:45') do
    expect("1:45".clock_angle).to(eq(142.5))
  end
end