class Piece
    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        @color = color #symbol
        @board = board
        @pos = pos # pos if array [row, col]
    end

    def valid_moves
    end

    def pos=(val)
        self = val # don't know what is self here...
    end
    
    def move_into_check?(end_pos)
    end
end

# my_piece = Piece.new(:W, board, [0, 0]) # don't know how to call board from board.rb
# p my_piece