class Train

  attr_accessor :carriages

  def initialize
	@carriages = 8
  end

  def arrive(station)
	station.add(self)
  end

  def leave(station)
	station.release(self)
  end

end