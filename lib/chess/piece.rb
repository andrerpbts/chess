module Chess
  class Piece
    attr_accessor :color

    def initialize(color)
      @color = color
    end

    def to_s
      color == :white ? white_symbol : black_symbol
    end

    def black_symbol = raise NotImplementedError
    def white_symbol = raise NotImplementedError
  end
end
