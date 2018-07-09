#write your code here

def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(array)
somme = 0
    for x in array 
    somme = somme + x
    end 
    return somme
end

puts sum([2, 3])

def multiply(a, b)
    return a * b
end

puts multiply(2, 12)
puts multiply(0, 12)

def power(a, b)
    return a ** b
end

puts power(4, 5)

def factorial(x)
factorial = 1
    for i in 1..x
        factorial = factorial * i
    end
    return factorial
end