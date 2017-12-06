class PigLatinizer

    def piglatinize(word)

        if word[0].downcase.match(/[aeiou]/)
            "#{word}way"
        else
            # cons = word.split(/[aeiou]/).first
            # "#{word.sub(cons,"")}#{cons}ay"

            "#{word.sub(word.split(/[aeiou]/).first,"")}#{word.split(/[aeiou]/).first}ay"
        end
      # else
      #   binding.pry
      #   "#{word.split('').rotate(word.split('')).index(/[aeiou]/))}ay"
      # end
    end

    def to_pig_latin(sentence)
        sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")
    end

end
