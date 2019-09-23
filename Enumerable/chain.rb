module Enumerable
  def my_chain(*args)
    pp self
    each do |item|

      pp item
    end
  end
end