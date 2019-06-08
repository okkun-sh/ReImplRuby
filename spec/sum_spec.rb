require "spec_helper"
require_relative '../sum/sum'

describe "#sum" do
  it do
    expect((1..10).my_sum).to eq 55
  end

  it do
    expect({ 1 => 10, 2 => 20 }.my_sum { |k, v| k*v }).to eq 50
  end

  it do
    expect((1..10).my_sum { |v| v * 2 }).to eq 110
  end

  it do
    expect({ 1 => 10, 2 => 20 }.my_sum([])).to eq [1, 10, 2, 20]
  end

  it do
    expect(["a", "b", "c"].my_sum("")).to eq "abc"
  end
end