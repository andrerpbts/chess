module Chess
  class Board
    attr_reader :squares

    def initialize
      @squares = Array.new(8) { Array.new(8) { Square.new } }
    end

    def render
      draw_border

      squares.each_with_index do |rank, index|
        rank_number = 8 - index

        draw_rank_spacing_row
        draw_rank_pieces_row(rank_number, rank)
        draw_rank_spacing_row
        draw_border
      end

      draw_files_labels
    end

    private

    def draw_border
      puts '    ' + '+-------' * 8 + '+'
    end

    def draw_rank_spacing_row
      puts '    ' + '|       ' * 8 + '|'
    end

    def draw_rank_pieces_row(rank_number, rank)
      print "#{rank_number}   "
      rank.each { |square| print square.piece.nil? ? '|       ' : "|   #{square.piece}   " }
      print '|'
      puts
    end

    def draw_files_labels
      print '   '
      ('a'..'h').each { |file_letter| print "    #{file_letter}   " }
      puts
    end
  end
end
