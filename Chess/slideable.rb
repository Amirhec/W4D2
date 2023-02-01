module Slideable

  # HORIZONTAL_DIRS stores an array of horizontal directions
    # when a piece moves in a given direction, its row and/or its column should increment by some value
    # ex: A piece starts at position [1, 2] and it moves horizontally to the right
      # its position changes to [1,3]
      # the row increases by 0 and the column increases by 1
  HORIZONTAL_DIRS = [
    [-1, 0], # left
    [1, 0], # right
    [0, 1], # up (vertical)
    [0, -1]  # down (vertical)
  ].freeze

  # DIAGONAL_DIRS stores an array of diagonal directions
  DIAGONAL_DIRS = [
    [-1, -1], # up + left
    [-1, 1], # up + right
    [1, -1], # down + left
    [1, 1]  # down + right
  ].freeze


  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end


  # should return an array of places a Piece can move to
  def moves



    move_dirs.each do |direction|
      dx, dy = direction
      grow_unblocked_moves_in_dir(dx, dy)




    end


    #self.pos is an array position [3,2]
    
    

    # create array to collect moves

    # iterate over each of the directions in which a slideable piece can move
      # use the Piece subclass' `#move_dirs` method to get this info
      # for each direction, collect all possible moves in that direction
        # and add them to your moves array 
        # (use the `grow_unblocked_moves_in_dir` helper method)

    # return the final array of moves (containing all possible moves in all directions)

    
  end


  private

  def move_dirs
    # subclass implements this
    raise NotImplementedError # this only executes if 
  end


  # this helper method is only responsible for collecting all moves in a given direction
  # the given direction is represented by two args, the combination of a dx and dy
  def grow_unblocked_moves_in_dir(dx, dy)
    # create an array to collect moves
    current_x, current_y = self.pos

    final_arr = []
   
      while current_x < 8 || current_y < 8
     
            if @board[current_x][current_y] == nil
              final_arr.push([current_x += dx,current_y += dy])
            end

      end
          
      return final_arr
    
    # get the piece's current row and current column

    # in a loop:
      # continually increment the piece's current row and current column to generate a new position
      # stop looping if the new position is invalid (not on the board); the piece can't move in this direction
      # if the new position is empty, the piece can move here, so add the new position to the moves array
      # if the new position is occupied with a piece of the opposite color, the piece can move here (to capture the opposing piece), so add the new position to the moves array
        # but, the piece cannot continue to move past this piece, so stop looping
      # if the new position is occupied with a piece of the same color, stop looping

    # return the final moves array
  end
end




# Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!
