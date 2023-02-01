class Piece
    attr_reader :value, :pos
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

