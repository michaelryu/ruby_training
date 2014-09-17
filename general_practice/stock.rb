def stock_picker(arr)
	diff = 0
	result = [0,0]
	arr.each_with_index do |a,i|
		arr.each_with_index do |x,y| 
			if a - x > diff
				diff = a - x
				num = a
				result[0] = i
				result[1] = y
			end
		end
	end
	puts "#{result.sort!}"
end

