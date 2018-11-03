require "./lib/offset"
require "./lib/key"

class Enigma
  attr_reader :key, :date
  def initialize
    new_key = Key.new
    @key = new_key.generate_key
  end
end
