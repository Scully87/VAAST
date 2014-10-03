class Station

  attr_accessor :train, :passenger

  def initialize
  	@trains = []
    @passengers = []
  end

  def train_count
  	@trains.count
  end

  def add(train)
  	@trains << train
  end

end