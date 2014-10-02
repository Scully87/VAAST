class Station

  attr_accessor :train

  def initialize
  	@trains = []
  end

  def train_count
  	@trains.count
  end

  def train_add
  	@trains << train
  end

end