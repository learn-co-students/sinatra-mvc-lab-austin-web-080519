class PigLatinizer
    attr_accessor :phrase

    def piglatinize(phrase)
        phrase_array = phrase.split
        vowels = ["a","e","i","o","u"]
        up_vowels = vowels.map{|v| v.upcase}
        consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']

        new_phrase_array = []

        phrase_array.each do |word|
            if vowels.include?(word[0]) || up_vowels.include?(word[0])
                new_word = word + "way"
                new_phrase_array << new_word
            elsif consonants.include?(word[1]) && consonants.include?(word[2])
                front = word.slice!(0,3)
                new_word = word + front + "ay"
                new_phrase_array << new_word
            elsif consonants.include?(word[1])
                front = word.slice!(0,2)
                new_word = word + front + "ay"
                new_phrase_array << new_word
            else
                front = word.slice!(0,1)
                new_word = word + front + "ay"
                new_phrase_array << new_word
            end
        end
        new_phrase_array.join(" ")
    end
end