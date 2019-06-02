require 'minitest/autorun'
require_relative 'find'

class FindTest < Minitest::Test
  def test_find
    assert_equal (1..10).my_find { |i| i % 5 == 0 and i % 7 == 0 }, nil
    assert_equal (1..100).my_find { |i| i % 5 == 0 and i % 7 == 0 }, 35
  end
end
