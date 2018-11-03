class Key
  def key
    num = Random.new
    key = num.rand(1000..99_999)

    if key.to_s.length == 4
      key = "0" + key.to_s
    else
      key
    end
  end

end 
