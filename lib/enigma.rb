require "./lib/offset"
require "./lib/key"
require "date"
require "./lib/crypt"

class Enigma < Crypt
  attr_reader :key, :alphabet, :new_key

  def initialize
    @new_key = Key.new
    @key = @new_key.generate_key
    @alphabet = ("a".."z").to_a << " "
    @gears = nil
  end

  #still needs to have a default for the date that is today's date

  def set_offset(key = @key, date = convert_date)
    offset = Offset.new(key, date) #make gears a class method(?)
    @gears = offset.gears
  end


  # def word_jumble(phrase)
  #   letters = phrase.downcase.chars
  #   letters.map do |letter| #helper method(?)
  #     if @alphabet.include?(letter)
  #       index = @alphabet.index(letter)
  #       jumble = @alphabet.rotate(@gears[0])
  #       @gears = @gears.rotate(1)
  #       jumble[index]
  #     else
  #       letter
  #     end
  #   end.join
  # end

  def convert_date
    day = Date.today
    day.strftime("%d%m%y")
  end

  # def encrypt(phrase, key = @key, date = convert_date)
  #   set_offset(key, date)
  #   display = {}
  #   display[:encryption] = word_jumble(phrase)
  #   display[:key] = key
  #   display[:date] = date
  #   display
  # end

  def reverse_offset
    @gears = @gears.map do |gear|
      gear * -1
    end
  end

  # def decrypt(phrase, key = @key, date = convert_date)
  #   set_offset(key, date)
  #   reverse_offset
  #   display = {}
  #   display[:decryption] = word_jumble(phrase)
  #   display[:key] = key
  #   display[:date] = date
  #   display
  # end



end
