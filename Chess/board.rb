
class Board

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

    end

end