module Enumerable
  def my_drop(num)
    ary = []
    c = 1
    each do |item|
      if c <= num
        c += 1
        next
      end
      c += 1
      ary << item
    end
    ary
  end
end