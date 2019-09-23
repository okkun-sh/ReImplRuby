require 'spec_helper'
require_relative '../all/all'

describe "#all" do
  it do
    expect(%w[ant bear cat].my_all? { |word| word.length >= 3 }).to eq true
  end

  it do
    expect(%w[ant bear cat].my_all? { |word| word.length >= 4 }).to eq false
  end

  it do
    expect(%w[ant bear cat].my_all?(/t/)).to eq false
  end

  it do
    expect([1, 2i, 3.14].my_all?(Numeric)).to eq true
  end

  it do
    expect([nil, true, 99].my_all?).to eq false
  end

  it do
    expect([].my_all?).to eq true
  end
  
end
