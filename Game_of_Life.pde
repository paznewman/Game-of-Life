
int cell_size = 20;

boolean[][] grid, next;
int rows, cols;

void setup() {
  size(600,400);
  rows = height/cell_size;
  cols = width/cell_size;
  grid = new boolean[rows][cols];
  print(grid[0].length);
  for (int i = 0; i < rows; i++)
    for (int j = 0; j < cols; j++)
      grid[i][j] = (random(1) > 0.5);
}

void draw() {
  // draw the grid
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      println(j);
      if (grid[i][j]) {
        fill(255,255,0);
      } else {
        fill (0);
      }
      rect(i*cell_size, j*cell_size, cell_size, cell_size);
    }
  }
}
