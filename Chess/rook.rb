require_relative 'piece.rb'
require_relative 'slideable.rb'

class Rook < Piece
    require Slideable

    def initialize(color, board, pos)
        super(color, board, pos)
    end

    def symbol
        '♜'.colorize(color)
    end
    
    protected
    
    def move_dirs
        
    end

end