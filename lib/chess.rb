require_relative 'chess/version'
require_relative 'chess/board'
require_relative 'chess/square'

module Chess
  def self.play
    chessboard = Board.new
    # Black pieces
    chessboard.squares[0][0].piece = 'R'
    chessboard.squares[0][1].piece = 'N'
    chessboard.squares[0][2].piece = 'B'
    chessboard.squares[0][3].piece = 'Q'
    chessboard.squares[0][4].piece = 'K'
    chessboard.squares[0][5].piece = 'B'
    chessboard.squares[0][6].piece = 'N'
    chessboard.squares[0][7].piece = 'R'
    chessboard.squares[1].each { |square| square.piece = 'P' }

    # White pieces
    chessboard.squares[7][0].piece = 'R'
    chessboard.squares[7][1].piece = 'N'
    chessboard.squares[7][2].piece = 'B'
    chessboard.squares[7][3].piece = 'Q'
    chessboard.squares[7][4].piece = 'K'
    chessboard.squares[7][5].piece = 'B'
    chessboard.squares[7][6].piece = 'N'
    chessboard.squares[7][7].piece = 'R'
    chessboard.squares[6].each { |square| square.piece = 'P' }

    chessboard.render

    chessboard
  end
end
