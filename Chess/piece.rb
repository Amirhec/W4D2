class Piece
    attr_reader :value
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

