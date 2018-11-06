require "./lib/enigma"

class Crack < Enigma
  attr_reader :message, :date, :found_key
  def initialize(encrypted_message, date)
    @message = encrypted_message
    @date = date
    @found_key = nil
    super()
  end

  def find_key
    space_end = @message[-4..-1]
  end

end
