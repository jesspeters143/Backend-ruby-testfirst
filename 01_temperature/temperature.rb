#write your code here
def ftoc(fahrenheit_degrees)
    celsius = (fahrenheit_degrees - 32) * 5.0 / 9.0
    celsius.round
end

def ctof(celsius_degrees)
    # 9.0 / 5.0 floating point - not integer
    fahrenheit = (celsius_degrees * 9.0 / 5.0) + 32
    fahrenheit
end