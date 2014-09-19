class Board
	def initialize
		@board = []
		randomizer
		
	end
	def randomizer
		get_colors
		@x = (0..35).to_a.sort{ rand() - 0.5 }[0..3]
		@x.each do |y| @board << @colors[y] end
		return (@x)
	end
	def cheet
		p @board
	end
	def get_board
		return (@board)
	end
	def get_colors
		@colors = []
		6.times do @colors.push("blue","green","yellow","red","orange","purple") end
		return (@colors)
	end
end

class Game
	def initialize
		@finished = false
		@i = 0
		p "Pick one: coder, hacker"
		mode = gets.chomp
		if mode == "hacker"
			hacker
		elsif mode == "coder"
			coder
		else p "That doesn't work!"
		end
	end
	def hacker
		@b = Board.new
		@b.cheet
		until @finished
			reset
			4.times do answer = gets.chomp
				@answer << answer
				if answer == @b.get_board[@counter]
					@feedback << "black"
				elsif @b.get_board.include?(answer)
					@feedback <<  "white"
				else @feedback << []
				end
				@counter +=1  
			end
			checker
		end
	end
	def coder
		c = Board.new
		reset
		while @counter <4 do answer = gets.chomp
			if c.get_colors.include?(answer)
				@code << answer
				@counter +=1
			else p "That color doesn't work!"
			end
		end
		p @code
		z = c.get_colors
		until @finished
			counter = 0
			c.randomizer.each do |o| @answer << z[o]
				if z[o] == @code[counter]
					@feedback << "black"
				elsif @code.include?(z[o])
					@feedback << "white"
				else @feedback << []
					z - [z[o]]
				end
				counter +=1
			end
			checker
			#p z
			#@finished = true
		end
	end
	def reset
		@i +=1
		@answer = []
		@code = []
		@feedback = []
		@counter = 0
	end
	def checker
		if @feedback.all? { |x| x == "black"}
			@finished = true
			p "You Win!"
		elsif @i == 10
			@finished =true
			p "You Lose!"
		else
			p @answer
			p @feedback
		end
	end

end

g = Game.new