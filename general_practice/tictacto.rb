class Game
	attr_accessor :player, :counter, :box, :count, :finisher
	def initialize(player="")
		@counter = 1
		@box = Array.new(3) { Array.new(3,[]) } 
		@count = 0
		@finisher = Array.new(9)
	end
	def draw(x=0,y=0,player="")
		@count = 1
		box.each do |b|
		@count +=1
		b[x-1] = player if count == y +1
		p b 
		end
	end
	def start
	finished = 1
	while finished ==1
		if (finisher[1] != nil &&finisher[1] == finisher[2] && finisher[1] == finisher[3])||(finisher[4] != nil &&finisher[4] == finisher[5] && finisher[4] == finisher[6])||(finisher[7] != nil &&finisher[7] == finisher[8] && finisher[7] == finisher[9])||(finisher[1] != nil &&finisher[1] == finisher[4] && finisher[1] == finisher[7])||(finisher[2] != nil &&finisher[2] == finisher[5] && finisher[2] == finisher[8])||(finisher[3] != nil &&finisher[3] == finisher[6] && finisher[3] == finisher[9])
    			p "Game Over!"
    			break
    		end
    		if counter.modulo(2).zero?
			player = "X"
			p "Player 2 make your move!"
		else	player = "O"
			p "Player 1 make your move!"
		end
		text = gets.chomp
		if (1..9).include?(text.to_i) && @finisher[text.to_i] == nil
			@counter+=1
			case text.to_i
	      		when 1; 
	      			puts draw(1,1,player)
	      			@finisher[1] = player
	      		when 2; 
	      			puts draw(2,1,player)
	      			@finisher[2] = player
	      		when 3; 
	      			puts draw(3,1,player)
	      			@finisher[3] = player
	      		when 4; 
	      			puts draw(1,2,player)
	      			@finisher[4] = player
	      		when 5; 
	      			puts draw(2,2,player)
	      			@finisher[5] = player
	      		when 6; 
	      			puts draw(3,2,player)
	      			@finisher[6] = player
	      		when 7; 
	      			puts draw(1,3,player)
	      			@finisher[7] = player
	      		when 8; 
	      			puts draw(2,3,player)
	      			@finisher[8] = player
	      		when 9; 
	      			puts draw(3,3,player)
	      			@finisher[9] = player
	      		else
	    		end
    		 @finisher.join()
    		else p"That doesn't work!"
    		end
	end
	end
end

g = Game.new()
g.start


