require 'station'

describe Station do 

  let(:station) { Station.new }
  let(:train)   {double :train}

  it "should be able to hold trains" do 
  	expect(station.train_count).to eq(0)
  	station.train_add
  	expect(station.train_count).to eq(1)
  end

end