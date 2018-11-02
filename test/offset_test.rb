require "./test/test_helper"

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new(12345)
  end

  def test_it_exists
    offset = Offset.new(12345)
    assert_instance_of Offset, offset
  end

  def test_it_has_date
    assert_equal Date, @offset.date.class
    assert_equal String, @offset.date_string.class
  end

  def test_it_has_alphabet
    assert_equal 27, @offset.alphabet.length
    assert_equal "a", @offset.alphabet[0]
  end

  def test_it_has_a_key
    assert_equal 12345, @offset.key
  end

  def test_it_has_gears
    skip
    assert_equal 4, @offset.gears.length
    assert_equal 14, @offset.gears[0]
    assert_equal 25, @offset.gears[1]
    assert_equal 36, @offset.gears[2]
    assert_equal 49, @offset.gears[2]
  end

end
