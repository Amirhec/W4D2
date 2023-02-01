class Piece
    attr_reader :value, :pos
    
    def initialize(value,pos)
        @value = value
        @pos = pos
    end

    def moves
        
    end
end

class Nullpiece < Piece
    def initialize(value,pos)
        super
        @value = nil
    end
end

