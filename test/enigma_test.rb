require "./test/test_helper"

class EnigmaTest < Minitest::Test
  def setup
    message = "how now brown cow ..end.."
    @enigma = Enigma.new(message)
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_take_a_message
    assert_equal "how now brown cow ..end.." @enigma.message
  end

  def test_it_can_have_an_encrypt_key
    assert_equal 12345, @enigma.key
  end

  def test_it_has_date
    assert_equal 11/1/2018 @enigma.date
  end

end
