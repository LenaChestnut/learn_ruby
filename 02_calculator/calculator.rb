#write your code here
def add (a, b)
    a + b
end

def subtract (a, b)
    a - b
end

def sum array
    sum = 0

    array.each do |value|
        sum += value
    end

    return sum
end

def multiply values

    total = 1

    if values.empty?
        total = 0
    else
        values.each do |value|
            total *= value
        end
    end

    return total

end

def power (a, b)
    a**b
end

def factorial value
    result = 1

    if value == 0 || value == 1
        result = 1
    else
        while value > 0
            result *= value
            value -= 1
        end
    end

    return result
end