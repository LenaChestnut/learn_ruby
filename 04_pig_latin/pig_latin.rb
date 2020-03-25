#write your code here
def translate(string)

    sentence = string.split(" ").map do |word|
        $end = "ay"

        isCapitalized = false

        if word[0] == word[0].capitalize
            isCapitalized = true
        end

        word = word.downcase

        if word.match(/\A[aeiouy]/i)
            word = word + $end
        elsif word.match(/\A[^aeiouy]+/i)
            # check if the word has "qu"
            if word.match(/\A[^aeiouy]*qu[^aeiouy]*/i)
                match = word.match(/\A[^aeiouy]*qu[^aeiouy]*/i).to_s
                $end = match + $end
                word = word.sub(/\A[^aeiouy]*qu[^aeiouy]*/i, "") + $end
            else
                match = word.match(/\A[^aeiouy]+/i).to_s
                $end = match + $end
                word = word.sub(/\A[^aeiouy]+/i, "") + $end
            end
        end

        if word.match(/[[:punct:]]/)
            punctuation = word.match(/[[:punct:]]/).to_s
            word = word.sub(/[[:punct:]]/, "") + punctuation
        end

        if isCapitalized == true
            word = word.capitalize
        end

        word

    end
    
    sentence.join(" ")
end
