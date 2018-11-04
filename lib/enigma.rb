require "./lib/offset"
require "./lib/key"
require "date"

class Enigma
  attr_reader :key, :alphabet, :new_key

  def initialize
    @new_key = Key.new
    @key = @new_key.generate_key
    @alphabet = ("a".."z").to_a << " "
  end

  #still needs to have a default for the date that is today's date

  def gears(key = @key, date = convert_date)
    offset = Offset.new(key, date) #make gears a class method(?)
    gears = offset.gears
  end


  def word_jumble(phrase, key = @key, date = convert_date)
    offset = Offset.new(key, date) #make gears a class method(?)
    gears = offset.gears
    letters = phrase.downcase.chars
    letters.map do |letter| #helper method(?)
      if @alphabet.include?(letter)
        index = @alphabet.index(letter)
        jumble = @alphabet.rotate(gears[0])
        gears = gears.rotate(1)
        jumble[index]
      else
        letter
      end
    end.join
  end

  def convert_date
    day = Date.today
    day.strftime("%d%m%y")
  end

  def encrypt(phrase, key, date = convert_date)
    word_jumble(phrase, key, date)

  end


end
