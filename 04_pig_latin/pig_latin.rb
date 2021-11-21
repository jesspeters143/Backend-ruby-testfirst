# write your code here
# def translate_to_piglatin(s)
#     if s.start_with?('a', 'e', 'i', 'o', 'u')
#         s << "ay"
#     else
#         s
#     end
# end

def translate(sentence)
        # translate a sentence to piglatin by using translate_to_piglatin
        # This uses the map function to help transform each individual word
        # split the sentence into a list of words
    words = sentence.split(" ")
    mapped_words = words.map { |word| translate_to_piglatin(word) }
    mapped_words.join(" ")
end

def translate_to_piglatin(s)
    vowels = ["a", "e", "i", "o", "u"]
    
    if vowels.include? s[0]
          s + "ay"
        # two cases for "qu"
    elsif s[0..1] == "qu"
        s[2..-1] + "quay"
    elsif s[1..2] == "qu"
        s[3..-1] + s[0..2] + "ay"
        # for words that start with 3 consonants
    elsif !(vowels.include? s[0]) && !(vowels.include? s[1]) && !(vowels.include? s[2])
        s[3..-1] + s[0..2] + "ay"
        # for words that start with 2 consonants
    elsif !(vowels.include? s[0]) && !(vowels.include? s[1])
        s[2..-1] + s[0..1] + "ay"
        # for words that start with a single consonant
    else
        s[1..-1] + s[0] + "ay"
    end
end

# .map() function:
# INPUT: array
# OUTPUT: array

# What does it do: Changes every value an array by applying a function

# hello
# h = 0
# e = 1
# l = 2
# l = 3
# o = 4

# Test Driven Development: write tests to check before we start our code so we can see if our code is doing
# what we want to. We do this because we want to think about our code structure and logic before we 
# sit down to write it