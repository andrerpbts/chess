module Chess
  class Board
    attr_reader :squares

    def initialize
      @squares = Array.new(8) { Array.new(8) { Square.new } }
    end

    def render
      squares.each_with_index do |rank, index|
        rank_number = 8 - index

        draw_rank_spacing_row(rank_number)
        draw_rank_pieces_row(rank_number, rank)
        draw_rank_spacing_row(rank_number)
      end

      draw_files_labels
    end

    private

    def black
      "\e[1;42m"
    end

    def white
      "\e[107m"
    end

    def reset
      "\e[0m"
    end

    def draw_rank_spacing_row(rank_number)
      puts '      ' + 8.times.map { |n| cycled(rank_number, n, '       ') }.join + reset
    end

    def draw_rank_pieces_row(rank_number, rank)
      files = rank.map.with_index { |s, n| cycled(rank_number, n, "   #{s.piece}   ") }.join

      puts "  #{rank_number}   " + files + reset
    end

    def draw_files_labels
      puts
      puts '      ' + ('a'..'h').map { |file_letter| "   #{file_letter}   " }.join + reset
    end

    def cycled(rank_number, n, str)
      ((rank_number.even? && n.even?) || (rank_number.odd? && n.odd?) ? white : black) + str
    end
  end
end
