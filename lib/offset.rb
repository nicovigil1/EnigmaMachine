require "date"
class Offset
  attr_reader :date, :day, :date_int, :alphabet, :key

  def initialize(key, date)
    @date = date.to_i
    @key = key
  end

  def offset_1
    gear_1 = @key[0..1].to_i
    gear_2 = @key[1..2].to_i
    gear_3 = @key[2..3].to_i
    gear_4 = @key[3..4].to_i
    [gear_1, gear_2, gear_3, gear_4]
  end

  def offset_2
    squared_date = (@date**2).to_s[-4..-1]
    gear_1 = squared_date[0].to_i
    gear_2 = squared_date[1].to_i
    gear_3 = squared_date[2].to_i
    gear_4 = squared_date[3].to_i
    [gear_1, gear_2, gear_3, gear_4]
  end

  def total_offset
    offset_1.zip(offset_2).map do |numbers|
      numbers[0] + numbers[1]
    end
  end

  def gears
    gear_1 = total_offset[0]
    gear_2 = total_offset[1]
    gear_3 = total_offset[2]
    gear_4 = total_offset[3]
    [gear_1, gear_2, gear_3, gear_4]
  end

end
