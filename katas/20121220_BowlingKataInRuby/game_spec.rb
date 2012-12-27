#spec file

require './game'

def RollMany(game, rolls, pins)
	rolls.times {game.roll(pins) }
	game
end

describe Game do
	describe "#score" do
		it "returns 0 for all guter game" do
			game = Game.new
			20.times {game.roll(0)}
			game.score.should == 0
		end
		it "returns 20 for all ones" do
			game = Game.new
			20.times {game.roll(1)}
			game.score.should == 20
		end
		#it "returns 16 for a spare followed by a three" do
		#	game = Game.new
		#	game.roll(5)
		#	game.roll(5)
		#	game.roll(3)
		#	RollMany(game, 17, 0)
		#	game.score.should == 16
		#end
	end
end
