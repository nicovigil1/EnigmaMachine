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
    assert_equal String, @enigma.key.class
    assert_equal 5, @enigma.key.length
  end

  # def test_it_has_a_day
  #   assert_equal "060666" @enigma.day
  # end

  # def test_it_can_convert_date_into_date_class
  #   assert_equal Date, @enigma.date.class
  #   assert_equal Date.today, @enigma.date
  # end

  def test_it_has_an_alphabet
    assert_equal ("a".."z").to_a << " ", @enigma.alphabet
  end

  def test_message_can_be_jumbled
    skip
    assert_equal "keder ohulw", @enigma.word_jumble("hello world")
  end

  def test_encrypt_can_encrypt_a_message_with_set_arguments
    skip
    @encrypt = @enegma.encrypt("hello world", "02715", "040895")
    expected = {
                encryption: "keder ohulw",
                key: "02715",
                date: "040895"
               }

    assert_equal expeted, @encrypt
  end

end
