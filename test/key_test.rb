require "./test/test_helper"

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_it_can_generate_a_key
    key_range = (1000..99_999)
    assert_equal Integer, @key.key.class
    assert key_range.include?(@key.key)
  end

  def test_it_can_generate_0_as_first_number
    skip
    key_range = (1000..9_999)
    assert_equal Integer, @key.test_0_first.class
    assert_equal 0, @key.to_s[0]
  end

end
