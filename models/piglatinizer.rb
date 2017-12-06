class PigLatinizer

    def piglatinize(word)

        if /[aeiou]/ === word[0].downcase
            "#{word}way"
        else
            cons = word.split(/[aeiou]/).first
            second = word.sub(first,"")
            "#{second}#{first}ay"
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
