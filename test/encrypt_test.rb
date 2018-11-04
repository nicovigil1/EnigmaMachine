require "./test/test_helper"

class EncryptTest < Minitest::Test
  def setup
    @encrypt = Encrypt.new(message)
  end

  def test_it_exists
    assert_instance_of Encrypt, @encrypt("hey now")
  end

  def test_it_has_key
    assert_equal "12345", @encrypt.key
  end

  def test_it_has_a_date
    assert_equal String, @encrypt.date.class
    assert_equal 6, @encrypt.date.length
  end


end
