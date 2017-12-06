class PigLatinizer

    def piglatinize(word)

        if /[aeiou]/ === word[0].downcase
            "#{word}way"
        # else
        #     first = word.split(/[aeiou]/).first
        #     second = word.sub(first,"")
        #     "#{second}#{first}ay"
        # end
      else
        word.rotate! until word[0].downcase.match(/[aeiou]/)
        word + "ay"
      end
    end

    def to_pig_latin(sentence)
        sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")
    end

end
