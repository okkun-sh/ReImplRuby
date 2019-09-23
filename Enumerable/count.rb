module Enumerable
  def my_count(*values)
    return values.first if values.first.integer?

    
    c = 0
    each do |item|
      c += 1
    end
    c
  end
end