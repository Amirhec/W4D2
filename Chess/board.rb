
class Board

    attr_reader :board

    def initialize(board)
        @board = Array.new(8) { Array.new(8) }
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

end

class Piece
    def initialize(value,pos)
        @value = value
        @pos = pos
    end
end

class Nullpiece < Piece
    def initialize(value,pose)
        super
        @value = nil
    end
    

    

end