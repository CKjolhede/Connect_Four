``` ruby
cell = {
  slot: '.'
  column: 'A'
  row: '1'
  index: 'A1'
  row_column_test_value: 1
  diagonal_test_value: .001
}
```

visual based on cell[row_column_test] for testing vertical AND horizontal
wins/losses:
A B C D E F G
2 3 4 1 2 3 4
1 2 3 4 1 2 3
4 1 2 3 4 1 2
3 4 1 2 3 4 1
2 3 4 1 2 3 4
1 2 3 4 1 2 3

  ** FOR TESTING VERTICAL WINS/LOSSES **
  'cell[:row_column_test_value]' from the specific slot a player chooses to drop their
  piece would be added to the corresponding player_column array below.
  We could run `.include?(1, 2, 3, 4)` tests on each of those arrays to determine
  if a win had taken place. The same process would be executed for the computer
  'O' positions to determine if a loss had taken place (computer wins).
  We would also do these same tests for each ROW on the board.

  ** columns tests using `.include?(1, 2, 3, 4)` on each array**
    player_column_A = []
    player_column_B = []
    player_column_C = []
    player_column_D = []
    ...etc

    computer_column_A = []
    computer_column_B = []
    computer_column_C = []
    ...etc

  ** rows tests using `.include?(1, 2, 3, 4)` on each array**
    player_row_A = []
    player_row_B = []
    player_row_C = []
    player_row_D = []
    ...etc

    computer_row_A = []
    computer_row_B = []
    computer_row_C = []
    ...etc




visual based on cell[diagonal_test] for testing diagonal wins/losses:
A     B   C  D  E    F    G
.006 .06 .6  6  60  600  6000
.005 .05 .5  5  50  500  5000
.004 .04 .4  4  40  400  4000
.003 .03 .3  3  30  300  3000
.002 .02 .2  2  20  200  2000
.001 .01 .1  1  10  100  1000

  ** FOR TESTING DIAGONAL WINS/LOSSES **
  We'll have to calculate each individual sum for all possible diagonal wins in
  order to design the test. The diagonal test value comes from the cell hash,
  cell[:diagonal_test_value], of the cell chosen by the player/computer.



(board to mess around with to visualize specific game possibilities)
A B C D E F G
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
X O . . . . .
