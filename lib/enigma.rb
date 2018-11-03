require "./lib/offset"
require "./lib/key"

class Enigma
  attr_reader :key, :alphabet

  def initialize
    new_key = Key.new
    @key = new_key.generate_key
    @alphabet = ("a".."z").to_a << " "
  end

  def word_jumble

  end
end
