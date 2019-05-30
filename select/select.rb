module Enumerable
  def my_select
    ary = []
    each do |item|
      if yield(item)
        ary << item
      end
    end
    ary
  end
end