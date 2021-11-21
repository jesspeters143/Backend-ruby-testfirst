#write your code here

def echo (strg)
    strg
end

def shout (strg)
    # hello >> HELLO
    strg.upcase
end

# def repeat(strg)
#     rep = [strg] * 2 * " "
# end

def repeat(strg, n=2)
    # use array to add spaces
    rep = [strg] * n * " "
end

# def start_of_word(strg, num)
#     strg = 'hello'
#     strg[0..(num-1)]
# end

def start_of_word(strg, num)
    # 0..to how many letters
    strg[0..(num-1)]
end

def first_word(strg)
    strg.split[0]
end

# def titleize(strg)
#     strg.capitalize
# end

def titleize(strg)
    # ! onverting the first character to uppercase and the remainder to lowercase
    strg.capitalize!
    result = strg.split(" ")
    result.each do |x|
        x.capitalize! unless ["and", "over", "the"].include? x
    end
    # .join returns the string 
    result.join(" ")
end