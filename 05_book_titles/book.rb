class Book
# write your code here
# @book instance variable
# attr setters method
attr_reader :title
def title=(title_changed)
  words = title_changed.split
  rule_words = ["a", "an", "and", "the", "in", "of"]
  words = [words[0].capitalize] +
#   .map checks one word at the time
    words[1..-1].map do |word|
       rule_words.include?(word)? word : word.capitalize
    end
  @title = words.join(" ")
end
end

