require "date"
class Offset
  attr_reader :date, :date_int, :alphabet, :key
  def initialize(key)
    @date = Date.today
    @date_int = @date.strftime("%d%m%y").to_i
    @alphabet = ("a".."z").to_a << " "
    @key = key
  end

  def gears
    gears = []
    gear_1 = @key[0..1].to_i
  end

end
