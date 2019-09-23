require "spec_helper"
require_relative '../../Enumerable/find'

describe "#find" do
  it do
    expect((1..10).my_find { |i| i % 5 == 0 and i % 7 == 0 }).to eq nil
    expect((1..100).my_find { |i| i % 5 == 0 and i % 7 == 0 }).to eq 35
  end
end