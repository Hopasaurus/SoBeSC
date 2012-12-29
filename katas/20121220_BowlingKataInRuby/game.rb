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
		rollIndex = 0
		#@rolls.each { |r| score = score + r }
		10.times {
			if @rolls[rollIndex] == 10 # if strike
				frameScore = @rolls[rollIndex]
				frameScore += @rolls[rollIndex+1]
				frameScore += @rolls[rollIndex+2]
				rollIndex = rollIndex + 1
			else	
				frameScore = @rolls[rollIndex]
				frameScore = frameScore + @rolls[rollIndex+1]
			
				if frameScore == 10 # if spare
					 frameScore = frameScore + @rolls[rollIndex+2]  
				end
				
			 
				rollIndex = rollIndex + 2
			end
			score +=frameScore
			
		}
		score
	end
	
end
