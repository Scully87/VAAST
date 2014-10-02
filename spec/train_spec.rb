require 'train'

describe Train do
	
  let(:train) 	{ Train.new }
  let(:station) {double :station}
  let(:bank)	{double :station1}
  let(:angel)	{double :station2}

  it "should be initialized with carriages" do
	expect(train.carriages).to eq(8)
  end

  it "should be able to arrive at station" do
	allow(station).to receive(:add)
	train.arrive(station)
  end

  it "should be able to leave the station" do
    allow(station).to receive(:release)
	train.leave(station)
  end

  it "should be able to travel between stations" do
  	allow(bank).to receive(:release)
  	train.leave(bank)
  	allow(angel).to receive(:add)
  	train.arrive(angel)
  end

end