require_relative 'chess/version'

module Chess
  def self.play
    @chessboard = Array.new(8) { Array.new(8) }
    @chessboard[0][0] = 'r'

    @chessboard.each_with_index do |rank, index|
      rank_number = 8 - index

      print '   '
      8.times { print '+-------' }
      print '+'
      puts
      print '   '
      8.times { print '|       ' }
      print '|'
      puts
      print "#{rank_number}  "
      rank.each { |square| print square.nil? ? '|       ' : "|   #{square}   " }
      print '|'
      puts
      print '   '
      8.times { print '|       ' }
      print '|'
      puts
    end

    print '   '
    8.times { print '+-------' }
    print '+'
    puts
    print '   '
    ('a'..'h').each { |file_letter| print "    #{file_letter}   " }

    puts

    @chessboard
  end
end
