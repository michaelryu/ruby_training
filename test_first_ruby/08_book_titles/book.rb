class Book
attr_reader :title
def title=(title)
  @title= []
  title.split.map do |word|
    if %w(a and of the an in I).include?(word)
      @title << word
    else
      @title << word.capitalize
    end
  end
  @title.first.capitalize!
  @title = @title.join(" ")
end
end