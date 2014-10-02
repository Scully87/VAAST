class Station

  attr_accessor :train

  def initialize
  	@trains = []
  end

  def train_count
  	@trains.count
  end

  def add(train)
  	@trains << train
  end

end