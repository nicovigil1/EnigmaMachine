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
    assert_equal String, @key.generate_key.class
    assert key_range.include?(@key.generate_key.to_i)
  end
  # there's gotta be a better way to test this

  # def test_it_can_generate_0_as_first_number
  #   key_range = (1000..9_999)
  #   assert_equal String, @key.test_0_first.class
  #   assert_equal "0", @key.test_0_first[0]
  #   assert key_range.include?(@key.test_0_first.to_i)
  # end

end
