require 'station'

describe Station do 

  let(:station) { Station.new }
  let(:train)   {double :train}

  it "should be able to hold trains" do   
    expect{station.add(train)}.to change{station.train_count}.by 1
  end

end