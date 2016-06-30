require('rspec')
require('combo')

describe('String#combo') do
  it("returns the amount of quarters from any given number") do
    expect(('25').combo).to eq("1 quarters")
  end
  it("returns the amount of dimes from any given number") do
    expect(('10').combo).to eq("1 dimes")
  end
  it("returns the amount of nickels from any given number") do
    expect(('5').combo).to eq("1 nickels")
  end
  it("returns the amount of pennies from any given number") do
    expect(('1').combo).to eq("1 pennies")
  end
end
