module Enumerable
  def my_collect
    ary = []
    each do |item|
      ary << yield(item)
    end
    ary
  end
end
