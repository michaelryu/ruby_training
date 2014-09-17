def stringcounter(string,arr)
	counter = Hash.new(0)
	string.split(" ").each do |a|
		if arr.include?(a)
			counter[a] +=1
		end
	end
	puts counter
end

