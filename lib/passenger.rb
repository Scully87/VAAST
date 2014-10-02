class Passenger

	attr_accessor :balance

	def initialize
		@balance = 2
	end

	def enter(station)
		if  @balance >= 2
			  station.add(self)
				@balance = @balance -2
		else
			raise "Insufficent funds"
		end
	end

	def board(train)
		train.add(self)
	end

	def exit(train)
		train.release(self)
	end

	def leave(station)
		station.release(self)
	end
	
end