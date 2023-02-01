
class Board

    attr_reader :board

    def initialize
        @board = Array.new(8) { Array.new(8) }
        queen = Queen.new("queen", [0,3])
        king = King.new("king", [0,4])
        bishop_1 = Bishop.new("bishop",[0,1])
        bishop_2= Bishop.new("bishop". [0,5])
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        row_start, col_start = start_pos
        row_end,col_end = end_pos
            if @board[row_start][col_start].is_a?(Nullpiece) 
                raise "No piece at start pos"

            else
                raise "The piece cannot move to end_pos"

            end

    end

    def add_piece(piece,pos)
       
    end

end



