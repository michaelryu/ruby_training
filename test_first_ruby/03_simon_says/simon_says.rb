def echo(string)
	string
end

def shout(string)
	string.upcase
end
def repeat(string,x=2)
	string =((string+" ")*x).chop
end
def start_of_word(string,x)
	string.slice(0...x)
end
def first_word(string)
	arr = []
	string.split(" ").each do |x| arr << x end
	arr[0]
end
def titleize(string)
  string = string.split.map do |x|
    if %w(the and over).include?(x)
      x
    else
      x.capitalize
    end
  end
  string.first.capitalize!
  string.join(" ")
end
