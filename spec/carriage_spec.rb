require 'carriage'

describe Carriage do 

  let(:carriage) 	{ Carriage.new }
  let(:passenger) 	{double :passenger}

  it "should be initialized with a capacity" do
  	expect(carriage.capacity).to eq(40)
  end

  it "should know when it's full" do
    40.times { carriage.add(passenger) }
    expect(carriage.full?).to eq(true)
  end
end