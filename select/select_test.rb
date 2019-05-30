require 'minitest/autorun'
require_relative 'select'

class SelectTest < Minitest::Test
  def test_select
    assert_equal (1..10).my_select { |i|  i % 3 == 0 }, [3, 6, 9]
    assert_equal [1,2,3,4,5].my_select { |num|  num.even?  }, [2, 4]
    assert_equal [:foo, :bar].filter { |x| x == :foo }, [:foo]
  end
end