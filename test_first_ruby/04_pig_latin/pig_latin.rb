def translate(strings)
  y = %w[a e i o u]
  finish = []
  strings = strings.split(" ")
  strings.each do |string| 
    if y.include?(string[0])
      finish << string+"ay"
    else
      if y.include?(string[1])
        if ["qu"].include?(string[0..1])
          finish << string[2..string.length-1]+string[0..1]+"ay"
        else
          finish << string[1..string.length-1]+string[0]+"ay"
        end
      elsif y.include?(string[2])
        if ["qu"].include?(string[1..2])
          finish << string[3..string.length-1]+string[0..2]+"ay"
        else
          finish << string[2..string.length-1]+string[0..1]+"ay"
        end
      else
        finish << string[3..string.length-1]+string[0..2]+"ay"
      end
    end
  end
  return finish.join(" ")
end


