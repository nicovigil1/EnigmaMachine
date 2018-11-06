class Crypt
  def word_jumble(phrase)
    letters = phrase.downcase.chars
    letters.map do |letter| #helper method(?)
      if @alphabet.include?(letter)
        index = @alphabet.index(letter)
        jumble = @alphabet.rotate(@gears[0])
        @gears = @gears.rotate(1)
        jumble[index]
      else
        letter
      end
    end.join
  end

  def encrypt(phrase, key = @key, date = convert_date)
    set_offset(key, date)
    display = {}
    display[:encryption] = word_jumble(phrase)
    display[:key] = key
    display[:date] = date
    display
  end

  def decrypt(phrase, key = @key, date = convert_date)
    set_offset(key, date)
    reverse_offset
    display = {}
    display[:decryption] = word_jumble(phrase)
    display[:key] = key
    display[:date] = date
    display
  end

end
