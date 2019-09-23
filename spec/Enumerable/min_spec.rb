require "spec_helper"
require_relative '../../Enumerable/min'

describe "#min" do
  it do
    expect(%w(albatross dog horse).my_min).to eq "albatross"
  end

  it do
    expect(%w(dog albatross horse).my_min { |a, b| a.length <=> b.length }).to eq "dog"
  end

  it do
#    expect(%w(albatross dog horse).my_min { |a, b| a.length <=> b.length }).to eq "dog"
  end

  it do
    expect(%w(albatross dog horse).my_min(2)).to eq ["albatross", "dog"]
  end

  it do
    expect([5, 1, 7, 4, 2].min(3)).to eq [1, 2, 3]
  end
end
