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
        new_word = ""
        until new_word[0].downcase.match(/[aeiou]/)
          new_word = word.rotate
        end
        new_word + "ay"
      end
    end

    def to_pig_latin(sentence)
        sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")
    end

end
