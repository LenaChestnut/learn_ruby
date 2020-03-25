#write your code here
def echo string
    string
end

def shout string
    string.upcase
end

def repeat string, times = 2
    ([string]*times).join(" ")
end

def start_of_word string, n

    # use a range
    string[0...n]
    
end

def first_word string

    string.split(" ").first

end

def titleize string
    little_words = ["the", "and", "over"]

    array = string.split(" ").map do |word|
        if little_words.include?(word)
            word
        else
            word.capitalize
        end
    end

    array.first.capitalize!
    array.join(" ")
end