require_relative 'chess/version'
require_relative 'chess/board'
require_relative 'chess/piece'
require_relative 'chess/pieces/bishop'
require_relative 'chess/pieces/king'
require_relative 'chess/pieces/knight'
require_relative 'chess/pieces/queen'
require_relative 'chess/pieces/pawn'
require_relative 'chess/pieces/rook'
require_relative 'chess/square'

module Chess
  def self.play
    banner = <<~BANNER
     ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░░▒▓███████▓▒░▒▓███████▓▒░
    ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░     ░▒▓█▓▒░
    ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░     ░▒▓█▓▒░
    ░▒▓█▓▒░      ░▒▓████████▓▒░▒▓██████▓▒░  ░▒▓██████▓▒░░▒▓██████▓▒░
    ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░     ░▒▓█▓▒░
    ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░     ░▒▓█▓▒░
     ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓███████▓▒░▒▓███████▓▒░
    BANNER

    puts "\n\e[32m" + banner + "\e[0m\n"

    chessboard = Board.new

    # Black pieces
    chessboard.squares[0][0].piece = Pieces::Rook.new(:black)
    chessboard.squares[0][1].piece = Pieces::Knight.new(:black)
    chessboard.squares[0][2].piece = Pieces::Bishop.new(:black)
    chessboard.squares[0][3].piece = Pieces::Queen.new(:black)
    chessboard.squares[0][4].piece = Pieces::King.new(:black)
    chessboard.squares[0][5].piece = Pieces::Bishop.new(:black)
    chessboard.squares[0][6].piece = Pieces::Knight.new(:black)
    chessboard.squares[0][7].piece = Pieces::Rook.new(:black)
    chessboard.squares[1].each { |square| square.piece = Pieces::Pawn.new(:black) }

    # White pieces
    chessboard.squares[7][0].piece = Pieces::Rook.new(:white)
    chessboard.squares[7][1].piece = Pieces::Knight.new(:white)
    chessboard.squares[7][2].piece = Pieces::Bishop.new(:white)
    chessboard.squares[7][3].piece = Pieces::Queen.new(:white)
    chessboard.squares[7][4].piece = Pieces::King.new(:white)
    chessboard.squares[7][5].piece = Pieces::Bishop.new(:white)
    chessboard.squares[7][6].piece = Pieces::Knight.new(:white)
    chessboard.squares[7][7].piece = Pieces::Rook.new(:white)
    chessboard.squares[6].each { |square| square.piece = Pieces::Pawn.new(:white) }

    chessboard.render

    chessboard
  end
end
