require "date"
class Offset
  attr_reader :date, :date_string, :alphabet, :key
  def initialize(key)
    @date = Date.today
    @date_string = @date.strftime("%d%m%y")
    @alphabet = ("a".."z").to_a << " "
    @key = key
  end

end
