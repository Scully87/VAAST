require 'passenger'

describe Passenger do 

	let(:passenger) 	{ Passenger.new }
	let(:station) 		{double :station}
	let(:train)				{double :train}

	it "should be initialized with a balance" do
		expect(passenger.balance).to eq(2)
	end

	it "should be able to touch in at a station" do
		allow(station).to receive(:add)
		passenger.enter(station)
	end

	it "should be able to board a train" do
		allow(train).to receive(:add)
		passenger.board(train)
	end

	it "should be able to exit a train" do
		allow(train).to receive(:release)
		passenger.exit(train)
	end

	it "should be able to touch out at a station" do
		allow(station).to receive(:release)
		passenger.leave(station)
	end

end