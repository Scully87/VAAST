require 'carriage'

describe Carriage do 

  let(:carriage) { Carriage.new }

  it "should be initialized with a capacity" do
  	expect(carriage.capacity).to eq(40)
  end
  
end