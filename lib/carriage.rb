class Carriage

  attr_accessor :capacity

  def initialize
  	@capacity = 40
  	@on_carriage = []
  end

  def add(passenger)
  	@on_carriage << passenger
  end

  def passenger_count
  	@on_carriage.count
  end

  def full?
	passenger_count == @capacity
  end
end