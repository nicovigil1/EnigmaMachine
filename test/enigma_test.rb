require "./test/test_helper"

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_have_an_encrypt_key
    assert_instance_of Key, @enigma.new_key
    assert_equal String, @enigma.key.class
    assert_equal 5, @enigma.key.length
  end

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

  def test_it_can_reverse_gears
    key = "02715"
    date = "040895"
    assert_equal [-3, -27, -73, -20], @enigma.set_negative_offset
  end

  def test_it_can_decrypt
    expected = {
                decryption: "keder ohulw",
                key: "02715",
                date: "040895"
               }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

end
