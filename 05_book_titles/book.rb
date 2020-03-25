class Book
# write your code here
    # attr_reader automatically creates a getter method
    # which returns the value of the attribute
    attr_reader :title

    #A setter method establishes or reestablishes the value for an instance variable. 
    # It is common practice to have the setter method’s name match the instance variable’s name:
    def title=(book_title)

        book_title = book_title.split(" ").map do |word|

            little_words = ["the", "a", "an", "in", "of", "by", "with", "and"]

            if little_words.include?(word)
                word
            else 
                word[0] = word[0].capitalize
                word
            end
        end.join(" ").to_s

        book_title[0] = book_title[0].capitalize
        
        @title = book_title
    end

end