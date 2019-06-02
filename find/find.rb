module Enumerable
  def my_find
    each do |item|
      if yield(item)
        return item
      end
    end
    return nil
  end
end