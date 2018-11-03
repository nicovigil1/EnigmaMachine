require "./test/test_helper"

class EnigmaTest < Minitest::Test
  def setup
    message = "how now brown cow ..end.."
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  # def test_it_can_take_a_message
  #   assert_equal "how now brown cow ..end.." @enigma.message
  # end #from the old spec - hold onto it for now

  def test_it_can_have_an_encrypt_key
    assert_equal "12345", @enigma.key
  end

  # def test_it_has_a_day
  #   assert_equal "060666" @enigma.day
  # end

  def test_it_can_convert_date_into_date_class
    assert_equal Date, @enigma.date.class
    assert_equal "060666", @enigma.date.strftime("%d%m%y")
  end

end
