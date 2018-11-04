require "./test/test_helper"

class EncryptTest < Minitest::Test

  def setup
    @encrypt = Encrypt.new("hello world", "12345", "060666")
  end

  def test_it_exists
    assert_instance_of Encrypt, @encrypt
  end

  def test_it_has_a_date
    assert_equal "060666", @encrypt.date
    assert_equal String, @encrypt.date.class
    assert_equal 6, @encrypt.date.length
  end

  def test_it_has_key
    assert_equal "12345", @encrypt.key
  end



end
