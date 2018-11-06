require "./test/test_helper"

class CrackTest < Minitest::Test
  def setup
    key = "38867"
    date = "051118"
    encrypted_message = "ausbhpcekakqyck"
    @crack = Crack.new(encrypted_message, date)
  end

  def test_it_exists
    assert_instance_of Crack, @crack
    binding.pry
  end

  def test_it_can_take_an_encrypted_message
    assert_equal "ausbhpcekakqyck", @crack.message
  end

  def test_it_can_take_a_date
    assert_equal "051118", @crack.date
  end

  def test_it_can_find_key_for_encrypted_message
    assert_equal "38867", @crack.found_key
  end

  def test_it_can_decrypt_message
    skip
    assert_equal "hello world end", @crack.return_message
  end

end
