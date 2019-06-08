module Enumerable
  def my_sum(init = 0)
    res = init
    each do |item|
      if block_given?
        res += yield(item)
      else
        res += item
      end
    end
    res
  end
end
