require 'rspec'
require './lib/cells'

RSpec.describe Cells do
  before(:each) do
    @a1 = Cells.new('a',1,1,0.001)
  end

  it "exists" do
    expect(@a1).to be_a(Cells)
  end

  it "can return attributes" do
    expect(@a1.slot).to eq('.')
    expect(@a1.column).to eq("a")
    expect(@a1.row).to eq(1)
    expect(@a1.row_column_test_value).to eq(1)
    expect(@a1.diagonal_test_value).to eq(0.001)
  end

end
