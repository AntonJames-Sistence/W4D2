class Piece
    def initialize(color, board, pos)
        @color = color #symbol
        @board = Board.new
        @pos = pos # pos if array [row, col]
    end

    def valid_moves
    end

    def pos=(val)
    end

    def move_into_check?(end_pos)
    end
end