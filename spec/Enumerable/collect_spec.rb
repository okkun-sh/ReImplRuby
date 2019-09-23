require "spec_helper"
require_relative '../../Enumerable/collect'

describe "#collect" do
  it do
    expect((1..4).my_collect { |i| i*i }).to eq [1, 4, 9, 16]
  end

  it do
    expect((1..4).my_collect { "cat" }).to eq ["cat", "cat", "cat", "cat"]
  end
end
