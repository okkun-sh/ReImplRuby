require "spec_helper"
require_relative '../drop/drop'

describe "#drop" do
  it do
    expect([1, 2, 3, 4, 5, 0].my_drop(3)).to eq [4, 5, 0]
  end
end
