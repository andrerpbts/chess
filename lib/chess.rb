require_relative 'chess/version'

module Chess
  def self.play
    @chessboard = Array.new(8) { Array.new(8) }
    @chessboard[0][0] = 'r'

    @chessboard.each_with_index do |row, index|
      print "#{8 - index}  "
      row.each { |cell| print cell.nil? ? '  -  ' : "  #{cell}  " }
      puts
    end

    print '   '
    ('a'..'h').each { |letter| print "  #{letter}  " }
    puts

    @chessboard
  end
end
