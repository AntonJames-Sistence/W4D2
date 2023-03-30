require_relative 'piece.rb'
require_relative 'slideable.rb'

class Rook < Piece
    include Slideable

    def initialize(color, board, pos)
        super(color, board, pos)
    end

    def symbol
        '♜'.colorize(color)
    end
    
    # protected
    
    def move_dirs # support link for directions
        row, col = self.pos
        rook_possible_moves = []

        HORIZONTAL_DIRS.each do |hor_ver_directions|
            row_dir, col_dir = hor_ver_directions
            rook_possible_moves << [row+row_dir, col+col_dir]
        end

        rook_possible_moves
    end

end

rook = Rook.new(nil, nil, [5, 3])
p rook
p rook.moves