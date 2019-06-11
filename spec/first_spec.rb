require "spec_helper"
require_relative '../first/first'

describe "#first" do
  it do
    expect(%w[foo bar baz].my_first).to eq "foo"
  end

  it do
    expect(%w[foo bar baz].my_first(2)).to eq ["foo", "bar"]
  end

  it do
    expect(%w[foo bar baz].my_first(10)).to eq ["foo", "bar", "baz"]
  end

  it do
    expect(%w[foo bar baz].my_first(2)).to eq ["foo", "bar"]
  end

  it do
    expect([].my_first).to eq nil
  end

  it do
    expect([].my_first(10)).to eq []
  end
end
