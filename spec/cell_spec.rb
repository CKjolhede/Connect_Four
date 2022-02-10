require 'rspec'
require './lib/cell'

RSpec.describe Cell do
  before(:each) do
    @cell_a1 = Cell.new({
      slot: ".",
      column: "a",
      row: 1,
      row_column_test_value: 1,
      diagonal_test_value: 0.001})
  end

  it "exists" do
    expect(@cell_a1).to be_a(Cell)
  end

  it "has readable attributes" do
    expect(@cell_a1.cell_info[:slot]).to eq(".")
    expect(@cell_a1.column).to eq("a")
    expect(@cell_a1.row).to eq(1)
    expect(@cell_a1.row_column_test_value).to eq(1)
  end
    # expect(@cell_a1.diagonal_test_value).to eq(0.001)
end
