class Passenger

  attr_accessor :balance, :passenger

  def initialize
	@balance = 2
	@passengers = []
	@trains = []
	
  end

  def enter(station)
	if  @balance >= 2
		station.add(self)
		@balance = @balance -2
	else
	  raise "Insufficent funds"
	end
  end

  def passenger_count
  	@passengers.count 
  end

  def board(train)
  	@passengers << passenger
  end

  def exit(train)
	train.release(self)
  end

  def leave(station)
	station.release(self)
  end
	
end