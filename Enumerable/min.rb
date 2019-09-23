module Enumerable
  def my_min(num = 0)
    ary = []
    each_with_index do |v, k|
      if block_given?
        break if self[k+1].nil?
        if yield(v, self[k+1]) == 1
          ary[k] = self[k+1]
        else
          ary[k] = v
        end
      else
        if v <=> ary[k+1].nil?
          raise "hoge"
#        elsif v <=> self[k+1] == 1
          ary[k] = self[k+1]
        end
#        ary << v
      end
    end
    if num == 0
      ary[0]
    else
      ary[0..num-1]
    end
  end
end