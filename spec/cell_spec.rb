require 'rspec'
require './lib/cell'

RSpec.describe Cell do
  it "exists" do
    cell_1 = Cell.new('.', 'A', '1', 'A1', 1, 0.001)

    expect(cell_1).to be_an_instance_of(Cell)
  end

  it "has readable attributes" do
  cell_1 = Cell.new('.', 'A', 1, 'A1', 1, 0.001)

    expect(cell_1.slot_value).to eq('.')
    expect(cell_1.diagonal_test_value).to eq(0.001)
  end

  it "can add key/value pairs to hash" do
  cell_1 = Cell.new('.', 'A', 1, 'A1', 1, 0.001)

    expect(cell_1.cell_info).to eq({
      slot_value: '.',
      column: 'A',
      row: 1,
      index: 'A1',
      row_column_test_value: 1,
      diagonal_test_value: 0.001
      })
  end
end
