require "./lib/crypt"

class Crack < Crypt
  attr_reader :message, :date
  def initialize(encrypted_message, date)
    @message = encrypted_message
    @date = date
  end
end
