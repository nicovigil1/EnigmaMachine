require "./test/test_helper"

class OffsetTest < Minitest::Test
  def setup
    @test_date = Date.new(1966, 6, 6)
    @offset = Offset.new(12345, @test_date)
  end

  def test_it_exists
    offset = Offset.new(12345)
    assert_instance_of Offset, offset
  end

  def test_it_has_date
    assert_equal Date, @offset.date.class
    assert_equal Integer, @offset.date_int.class
  end

  def test_it_has_alphabet
    assert_equal 27, @offset.alphabet.length
    assert_equal "a", @offset.alphabet[0]
  end

  def test_it_has_a_key
    assert_equal "12345", @offset.key
  end

  def test_it_has_first_offset
    assert_equal [12, 23, 34, 45], @offset.offset_1
  end

  def test_it_has_second_offset
    assert_equal [3, 5, 5, 6], @offset.offset_2
  end

  def test_it_has_total_offset
    assert_equal [15, 28, 39, 51], @offset.total_offset
  end

  def test_it_has_gears
    skip
    assert_equal 4, @offset.gears.length
    assert_equal 15, @offset.gears[0]
    assert_equal 28, @offset.gears[1]
    assert_equal 39, @offset.gears[2]
    assert_equal 51, @offset.gears[2]
  end

end
