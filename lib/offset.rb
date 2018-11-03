require "date"
class Offset
  attr_reader :date, :date_int, :alphabet, :key
  def initialize(key, date = Date.today)
    @date = date # when a different date is passed in it HAS to be date class
    @date_int = @date.strftime("%d%m%y").to_i
    @alphabet = ("a".."z").to_a << " "
    @key = key.to_s
  end

  def offset_1
    gear_1 = @key[0..1].to_i
    gear_2 = @key[1..2].to_i
    gear_3 = @key[2..3].to_i
    gear_4 = @key[3..4].to_i
    [gear_1, gear_2, gear_3, gear_4]
  end

  def offset_2
    squared_date = (@date_int**2).to_s[-4..-1]
    gear_1 = squared_date[0].to_i
    gear_2 = squared_date[1].to_i
    gear_3 = squared_date[2].to_i
    gear_4 = squared_date[3].to_i
    [gear_1, gear_2, gear_3, gear_4]
  end

end
