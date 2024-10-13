module Chess
  class Square
    attr_writer :piece

    def initialize(piece = nil)
      @piece = piece
    end

    def piece
      @piece || ' '
    end
  end
end
