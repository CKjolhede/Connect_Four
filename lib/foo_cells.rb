require 'pry'

cell_a1 = {
  slot: '.',
  column: 'a',
  row: 1,
  row_column_test_value: 1,
  diagonal_test_value: 0.001
}
cell_b1 = {
  slot: '.',
  column: 'b',
  row: 1,
  index: 'b1',
  row_column_test_value: 2,
  diagonal_test_value: 0.01
}
cell_c1 = {
  slot: '.',
  column: 'c',
  row: 1,
  row_column_test_value: 3,
  diagonal_test_value: 0.1
}
cell_d1 = {
  slot: '.',
  column: 'd',
  row: 1,
  row_column_test_value: 4,
  diagonal_test_value: 1.0
}
cell_e1 = {
  slot: '.',
  column: 'e',
  row: 1,
  row_column_test_value: 1,
  diagonal_test_value: 10.0
}
cell_f1 = {
  slot: '.',
  column: 'f',
  row: 1,
  row_column_test_value: 2,
  diagonal_test_value: 100.0
}
cell_g1 = {
  slot: '.',
  column: 'g',
  row: 1,
  row_column_test_value: 3,
  diagonal_test_value: 1000.0
}
cell_a2 = {
  slot: '.',
  column: 'a',
  row: 2,
  row_column_test_value: 2,
  diagonal_test_value: 0.002
}
cell_b2 = {
  slot: '.',
  column: 'b',
  row: 2,
  row_column_test_value: 3,
  diagonal_test_value: 0.02
}
cell_c2 = {
  slot: '.',
  column: 'c',
  row: 2,
  row_column_test_value: 4,
  diagonal_test_value: 0.2
}
cell_d2 = {
  slot: '.',
  column: 'd',
  row: 2,
  row_column_test_value: 1,
  diagonal_test_value: 2.0
}
cell_e2 = {
  slot: '.',
  column: 'e',
  row: 2,
  row_column_test_value: 2,
  diagonal_test_value: 20.0
}
cell_f2 = {
  slot: '.',
  column: 'f',
  row: 2,
  row_column_test_value: 3,
  diagonal_test_value: 200.0
}
cell_g2 = {
  slot: '.',
  column: 'g',
  row: 2,
  row_column_test_value: 4,
  diagonal_test_value: 2000.0
}
cell_a3 = {
  slot: '.',
  column: 'a',
  row: 3,
  row_column_test_value: 3,
  diagonal_test_value: 0.003
}
cell_b3 = {
  slot: '.',
  column: 'b',
  row: 3,
  row_column_test_value: 4,
  diagonal_test_value: 0.03
}
cell_c3 = {
  slot: '.',
  column: 'c',
  row: 3,
  row_column_test_value: 1,
  diagonal_test_value: 0.3
}
cell_d3 = {
  slot: '.',
  column: 'd',
  row: 3,
  row_column_test_value: 2,
  diagonal_test_value: 3.0
}
cell_e3 = {
  slot: '.',
  column: 'e',
  row: 3,
  row_column_test_value: 3,
  diagonal_test_value: 30.0
}
cell_f3 = {
  slot: '.',
  column: 'f',
  row: 3,
  row_column_test_value: 4,
  diagonal_test_value: 300.0
}
cell_g3 = {
  slot: '.',
  column: 'g',
  row: 3,
  row_column_test_value: 1,
  diagonal_test_value: 3000.0
}
cell_a4 = {
  slot: '.',
  column: 'a',
  row: 4,
  row_column_test_value: 4,
  diagonal_test_value: 0.004
}
cell_b4 = {
  slot: '.',
  column: 'b',
  row: 4,
  row_column_test_value: 1,
  diagonal_test_value: 0.04
}
cell_c4 = {
  slot: '.',
  column: 'c',
  row: 4,
  row_column_test_value: 2,
  diagonal_test_value: 0.4
}
cell_d4 = {
  slot: '.',
  column: 'd',
  row: 4,
  row_column_test_value: 3,
  diagonal_test_value: 4.0
}
cell_e4 = {
  slot: '.',
  column: 'e',
  row: 4,
  row_column_test_value: 4,
  diagonal_test_value: 40.0
}
cell_f4 = {
  slot: '.',
  column: 'f',
  row: 4,
  row_column_test_value: 1,
  diagonal_test_value: 400.0
}
cell_g4 = {
  slot: '.',
  column: 'g',
  row: 4,
  row_column_test_value: 2,
  diagonal_test_value: 4000.0
}
cell_a5 = {
  slot: '.',
  column: 'a',
  row: 5,
  row_column_test_value: 1,
  diagonal_test_value: 0.005
}
cell_b5 = {
  slot: '.',
  column: 'b',
  row: 5,
  row_column_test_value: 2,
  diagonal_test_value: 0.05
}
cell_c5 = {
  slot: '.',
  column: 'c',
  row: 5,
  row_column_test_value: 3,
  diagonal_test_value: 0.5
}
cell_d5 = {
  slot: '.',
  column: 'd',
  row: 5,
  row_column_test_value: 4,
  diagonal_test_value: 5.0
}
cell_e5 = {
  slot: '.',
  column: 'e',
  row: 5,
  row_column_test_value: 1,
  diagonal_test_value: 50.0
}
cell_f5 = {
  slot: '.',
  column: 'f',
  row: 5,
  row_column_test_value: 2,
  diagonal_test_value: 500.0
}
cell_g5 = {
  slot: '.',
  column: 'g',
  row: 5,
  row_column_test_value: 3,
  diagonal_test_value: 5000.0
}
cell_a6 = {
  slot: '.',
  column: 'a',
  row: 6,
  row_column_test_value: 2,
  diagonal_test_value: 0.006
}
cell_b6 = {
  slot: '.',
  column: 'b',
  row: 6,
  row_column_test_value: 3,
  diagonal_test_value: 0.06
}
cell_c6 = {
  slot: '.',
  column: 'c',
  row: 6,
  row_column_test_value: 4,
  diagonal_test_value: 0.6
}
cell_d6 = {
  slot: '.',
  column: 'd',
  row: 6,
  row_column_test_value: 1,
  diagonal_test_value: 6.0
}
cell_e6 = {
  slot: '.',
  column: 'e',
  row: 6,
  row_column_test_value: 2,
  diagonal_test_value: 60.0
}
cell_f6 = {
  slot: '.',
  column: 'f',
  row: 6,
  row_column_test_value: 3,
  diagonal_test_value: 600.0
}
cell_g6 = {
  slot: '.',
  column: 'g',
  row: 6,
  row_column_test_value: 4,
  diagonal_test_value: 6000.0
}

row_1 = [cell_a1, cell_b1, cell_c1, cell_d1, cell_e1, cell_f1, cell_g1]
row_2 = [cell_a2, cell_b2, cell_c2, cell_d2, cell_e2, cell_f2, cell_g2]
row_3 = [cell_a3, cell_b3, cell_c3, cell_d3, cell_e3, cell_f3, cell_g3]
row_4 = [cell_a4, cell_b4, cell_c4, cell_d4, cell_e4, cell_f4, cell_g4]
row_5 = [cell_a5, cell_b5, cell_c5, cell_d5, cell_e5, cell_f5, cell_g5]
row_6 = [cell_a6, cell_b6, cell_c6, cell_d6, cell_e6, cell_f6, cell_g6]

column_a = [cell_a1, cell_a2, cell_a3, cell_a4, cell_a5, cell_a6]
column_b = [cell_b1, cell_b2, cell_b3, cell_b4, cell_b5, cell_b6]
column_c = [cell_c1, cell_c2, cell_c3, cell_c4, cell_c5, cell_c6]
column_d = [cell_d1, cell_d2, cell_d3, cell_d4, cell_d5, cell_d6]
column_e = [cell_e1, cell_e2, cell_e3, cell_e4, cell_e5, cell_e6]
column_f = [cell_f1, cell_f2, cell_f3, cell_f4, cell_f5, cell_f6]
column_g = [cell_g1, cell_g2, cell_g3, cell_g4, cell_g5, cell_g6]

# binding.pry
