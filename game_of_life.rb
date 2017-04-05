require 'pry'
class Cell
  attr_accessor :state, :top_left, :top_center, :top_right, :mid_left, :mid_right, :bottom_left, :bottom_center, :bottom_right

  def initialize
    @state = false
    @top_left = nil
    @top_center = nil
    @top_right = nil
    @mid_left = nil
    @mid_right = nil
    @bottom_left = nil
    @bottom_center = nil
    @bottom_right = nil
  end
end

class GameBoard(size)


  def first_cell
    cell = Cell.new
  end


end

game_board = GameBoard.new(4)

game_board.


# def make_grid(size)
#   #binding.pry
#   grid_row = (0...size).map do |num|
#     Cell.new
#     #binding.pry
#   end
#   #binding.pry
#   grid = (0...size).map do |num|
#     grid_row
#   end
#   #binding.pry
# end

# def display_grid(grid)
#   grid.each do |grid_row|
#     #binding.pry
#     p grid_row
#   end
# end

# def neighbors(grid, cell_index_row, cell_index_column)
#   cell_id = [1, 1]
#   top_left
#   top_center
#   top_right
#   mid_left
#   mid_right
#   bottom_left
#   bottom_center
#   bottom_right
  
#   grid[cell_index_row, cell_index_column - 1]
#   grid[cell_index_row + 1, cell_index_column - 1]
#   grid[cell_index_row - 1, cell_index_column - 1]
#   grid[cell_index_row - 1, cell_index_column]
#   grid[cell_index_row + 1, cell_index_column]
#   grid[cell_index_row, cell_index_column + 1]
#   grid[cell_index_row - 1, cell_index_column + 1]
#   grid[cell_index_row + 1, cell_index_column + 1]

# end
# size = 10
# new_grid = make_grid(size)
# display_grid(new_grid)
# neighbors(new_grid, 1, 1)

