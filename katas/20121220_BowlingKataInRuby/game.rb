#game

class Game
	def initialize 
		@score = 0;
		@rolls = Array.new()
		@currentRoll = 0
	end


	def roll(pins)
		@rolls[@currentRoll] = pins
		@currentRoll += 1
	end
	
	def score
		score = 0
		@rolls.each { |r| score += r }
			
		score
	end
end
