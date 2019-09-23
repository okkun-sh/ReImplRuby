module Enumerable
  def my_first(num = nil)
    return nil if self == [] && num.nil?
    ary = []
    i = 0
    each do |item|
      return item if num.nil?

      if i <= num - 1
        ary << item
      else
        break
      end
      i += 1
    end
    ary
  end
end