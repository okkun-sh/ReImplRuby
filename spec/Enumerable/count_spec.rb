require "spec_helper"
require_relative '../../Enumerable/count'

describe "#count" do
  let(:ary) { [1, 2, 4, 2] }
  it do
    expect(ary.my_count).to eq 4
  end

  it do
    expect(ary.my_count(2)).to eq 2
  end
end
