class Key

  def key
    num = Random.new
    key = num.rand(1000..99_999)

    if key.to_s.length == 4
      key = "0" + key.to_s
      p key
    else
      key.to_s
    end
  end

  def test_0_first
    num = Random.new
    key = num.rand(1000..9_999)
    #same as above - just ensures number can start with 0
    if key.to_s.length == 4
      key = "0" + key.to_s
      key
    else
      key.to_s
    end

  end

end
