module Enumerable
  def my_all?(*arg)
    each do |item|
      begin
        if block_given?
          return false unless yield(item)
        else
          return false unless item.arg
        end
      rescue => e
        return false
      end
    end
    true
  end
end