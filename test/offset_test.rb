require "./test/test_helper"

class OffsetTest < Minitest::Test
  def setup
    @test_date = "060666"
    @offset = Offset.new("12345", @test_date)
  end

  def test_it_exists
    offset = Offset.new("12345", @test_date)
    assert_instance_of Offset, offset
  end

  def test_it_has_date
    assert_equal 60666, @offset.date
    assert_equal Integer, @offset.date.class
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
    assert_equal 4, @offset.gears.length
    assert_equal 15, @offset.gears[0]
    assert_equal 28, @offset.gears[1]
    assert_equal 39, @offset.gears[2]
    assert_equal 51, @offset.gears[3]
  end

end
