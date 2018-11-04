require "./test/test_helper"

class EncryptTest < Minitest::Test
  def setup
    @encrypt = Encrypt.new
  end

  def test_it_exists
    assert_instance_of Encrypt, @encrypt
  end

  def test_it_has_key
    assert_equal "12345", @encrypt.key
  end

end
