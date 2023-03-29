require_relative 'stepable.rb'
require_relative 'piece.rb'

class King
    include Stepable

    def initialize(color, board, pos)
        super
    end

    def symbol
    end

    def move_diffs
        row, col = self.pos

        king_possible_moves = [
            [row-1, col-1],
            [row, col-1],
            [row+1, col-1],
            [row+1, col],
            [row+1, col+1],
            [row, col+1],
            [row-1, col+1],
            [row-1, col]
        ]
    end
end