require "./test/test_helper"

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  # def test_it_can_take_a_message
  #   assert_equal "how now brown cow ..end.." @enigma.message
  # end #from the old spec - hold onto it for now

  def test_it_can_have_an_encrypt_key
    assert_instance_of Key, @enigma.new_key
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

  def test_it_has_alphabet
    assert_equal 27, @enigma.alphabet.length
    assert_equal "a", @enigma.alphabet[0]
  end

  def test_it_can_initialize_gears_for_encryption
    key = "02715"
    date = "040895"
    assert_equal [3, 27, 73, 20], @enigma.set_offset(key, date)
  end

  def test_it_can_convert_date_into_date_class
    assert_equal 6, @enigma.convert_date.length
    assert_equal String, @enigma.convert_date.class
  end

  def test_message_can_be_jumbled
    gears = @enigma.set_offset("02715", "040895")
    assert_equal "keder ohulw!", @enigma.word_jumble("HeLlo WorLd!")
  end

  def test_encrypt_can_encrypt_a_message_with_set_arguments
    @encrypt = @enigma.encrypt("hello world", "02715", "040895")
    expected = {
                encryption: "keder ohulw",
                key: "02715",
                date: "040895"
               }

    assert_equal expected, @encrypt
  end

end
