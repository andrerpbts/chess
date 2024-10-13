require_relative 'chess/version'
require_relative 'chess/board'
require_relative 'chess/square'

module Chess
  def self.play
    chessboard = Board.new
    chessboard.squares[0][0].piece = 'r'

    chessboard.render

    chessboard
  end
end
