module MathHelpers
	def exponent(x,y)
		return(x**y)
	end
end

class Calculator
	include MathHelpers
	def square_root(z)
		puts exponent(z,0.5)

	end
end

calc = Calculator.new()
calc.square_root(4)
