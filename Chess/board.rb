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

        queen_black = Queen.new("♛", [0,3])
        king_black= King.new("♚", [0,4])
        bishop_1_black = Bishop.new("♝",[0,2])
        bishop_2_black = Bishop.new("♝", [0,5])
        knight_1_black = Knight.new("♞", [0,6])
        knight_2_black = Knight.new("♞", [0,1])
        rook_1_black = Rook.new("♜", [0,0])
        rook_2_black = Rook.new("♜", [0,7])

        pawn_1_black = Pawn.new("♟︎", [1,0])
        pawn_2_black = Pawn.new("♟︎", [1,1])
        pawn_3_black = Pawn.new("♟︎", [1,2])
        pawn_4_black = Pawn.new("♟︎", [1,3])
        pawn_5_black = Pawn.new("♟︎", [1,4])
        pawn_6_black = Pawn.new("♟︎", [1,5])
        pawn_7_black = Pawn.new("♟︎", [1,6])
        pawn_8_black = Pawn.new("♟︎", [1,7])



        
        queen_white = Queen.new("♕", [7,3])
        king_white = King.new("♔", [7,4])
        bishop_1_white = Bishop.new("♗",[7,2])
        bishop_2_white = Bishop.new("♗", [7,5])
        knight_1_white = Knight.new("♘", [7,1])
        knight_2_white = Knight.new("♘", [7,6])
        rook_1_white = Rook.new("♖", [7,0])
        rook_2_white = Rook.new("♖", [7,7])

        pawn_1_white = Pawn.new("♙", [6,0])
        pawn_2_white = Pawn.new("♙", [6,1])
        pawn_3_white = Pawn.new("♙", [6,2])
        pawn_4_white = Pawn.new("♙", [6,3])
        pawn_5_white = Pawn.new("♙", [6,4])
        pawn_6_white = Pawn.new("♙", [6,5])
        pawn_7_white = Pawn.new("♙", [6,6])
        pawn_8_white = Pawn.new("♙", [6,7])

        ary = [queen_black, king_black, bishop_1_black, bishop_2_black, knight_1_black, knight_2_black, rook_1_black, rook_2_black, pawn_1_black, pawn_2_black, pawn_3_black, pawn_4_black, pawn_5_black, pawn_6_black, pawn_7_black, pawn_8_black]

        ary.each do |instance|
            # debugger
            self[instance.pos] = instance.value
        end


        ary1 = [queen_white, king_white, bishop_1_white, bishop_2_white, knight_1_white, knight_2_white, rook_1_white, rook_2_white, pawn_1_white, pawn_2_white, pawn_3_white, pawn_4_white, pawn_5_white, pawn_6_white, pawn_7_white, pawn_8_white]

        ary1.each do |instance|
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

            elsif !@board[row_end][col_end].nil?
                raise "the piece cannot move to end pos"

            end

        instance = @board[row_start][col_start]
        @board[row_end][col_end] = instance
# debugger
        @board[row_start][col_start] = nil





        

    end

    def add_piece(piece,pos)
       
    end

end



