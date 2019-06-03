require "spec_helper"
require_relative '../select/select'

describe "#select" do
  it do
    expect((1..10).my_select { |i| i % 3 == 0 }).to eq [3, 6, 9]
    expect([1,2,3,4,5].my_select { |num|  num.even? }).to eq [2, 4]
    expect([:foo, :bar].my_select { |x| x == :foo }).to eq [:foo]
  end
end