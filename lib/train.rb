class Train

  attr_accessor :carriages, :passengers
  
  def initialize
	@carriages = 8
	@passengers = []
  end

  def arrive(station)
	station.add(self)
  end

  def leave(station)
	station.release(self)
  end

end