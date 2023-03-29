require_relative 'piece.rb'
require_relative 'stepable.rb'

class Knight < Piece
    include Stepable

    def initialize(color, board, pos)
        super
    end

    def symbol
        '♞'.colorize(color) #just a symbol taken from goole, color doesn't word yet
    end

    # is it used on board position as self?
    def move_diffs # after recieve all posible moves we have to pass it to possible_moves???
        row, col = self.pos   # require self to be a piece on the board to decompose 
        all_pos_pos_for_knight = 
        [
            [row-2, col-1],
            [row-2, col+1],
            [row-1, col-2],
            [row+1, col-2],
            [row+2, col-1],
            [row+2, col+1],
            [row+1, col+2],
            [row-1, col+2]
        ]
    end
    
end

# k = Knight.new(:W, 'board', [5, 5])
# p k.pos
# k.move_diffs
# p k.move_diffs