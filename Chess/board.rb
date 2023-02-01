require_relative "queen.rb"
require_relative  "king.rb"
require_relative   "bishop.rb"
require_relative  "rook.rb"
require_relative   "knight.rb"
require_relative   "pawn.rb"

require "byebug"

class Board

    attr_reader :board

    def initialize
        @board = Array.new(8) { Array.new(8) }

        queen = Queen.new("queen", [0,3])
        king = King.new("king", [0,4])
        bishop_1 = Bishop.new("bishop",[0,2])
        bishop_2 = Bishop.new("bishop", [0,5])
        knight_1 = Knight.new("knight", [0,6])
        knight_2 = Knight.new("knight", [0,1])
        rook_1 = Rook.new("rook", [0,0])
        rook_2 = Rook.new("rook", [0,7])

        pawn_1 = Pawn.new("pawn", [1,0])
        pawn_2 = Pawn.new("pawn", [1,1])
        pawn_3 = Pawn.new("pawn", [1,2])
        pawn_4 = Pawn.new("pawn", [1,3])
        pawn_5 = Pawn.new("pawn", [1,4])
        pawn_6 = Pawn.new("pawn", [1,5])
        pawn_7 = Pawn.new("pawn", [1,6])
        pawn_8 = Pawn.new("pawn", [1,7])

        ary = [queen, king, bishop_1, bishop_2, knight_1, knight_2, rook_1, rook_2, pawn_1, pawn_2, pawn_3, pawn_4, pawn_5, pawn_6, pawn_7, pawn_8]

        ary.each do |instance|
            # debugger
            self[instance.pos] = instance.value
        end

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



