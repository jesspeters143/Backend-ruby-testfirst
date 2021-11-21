#write your code here
def add(a, b)
    a + b
end

def subtract (a, b)
    a - b 
end
# computes the sum of an empty array, an array of one number
def sum(nums)
    total = 0

    i = 0
    # .count counts the number of elements
    while i < nums.count
        total += nums[i]

        i +=1
    end
    total
end

# all arguments given to the method in an array
def multiplies(*numbers)
    # hold the result of all the multiplications
    result = 1
    # iterate over all the numbers with each, and for each number I multiply it with the current result
    numbers.each { |n| result = result * n }
    #  store this as the new result
    result
  end

def power(a,b)
    a ** b
end

def factorial(num)
    # invoke the sequence of numbers starting at num
    step = 0
    # times loop
    (num - 1).times do 
        (step += 1 ;
        num *= step) 
    end
    return num
end
