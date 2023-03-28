require 'byebug'
class Piece
    def initialize
        #empty piece for now, to use it temporary for the board
    end
end


class Board
    attr_reader :board

    def initialize
        @board = Array.new(8) { Array.new(8) { nil } }
        populate_board
    end

    def populate_board
        @board[0..1].each do |row|
            row.map! { |n| n = Piece.new }
        end

        @board[6..7].each do |row|
            row.map! { |n| n = Piece.new }
        end
    end

    def [](pos)
        row, col = pos
        if row > 7 || row < 0 || col > 7 || col < 0
            raise "Position is not valid!"
        end
        @board[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        row, col = end_pos
        if row > 7 || row < 0 || col > 7 || col < 0
            raise "Can't move to the chosen position"
        end

        piece = self.[](start_pos)
        raise "There is no piece at this position!" if piece == nil

        self.[]=(end_pos, piece)
        self.[]=(start_pos, nil)
        puts "Move is successful"
    end
end

board = Board.new
p board

board.move_piece([6, 2], [4, 4]) # move piece test #1 passed
p board

# board.move_piece([-4, -6], [4, 4]) # move piece test #2 partle passed
# p board

# board.move_piece([6, 2], [-2, -2]) # move piece test #3 passed
# p board

# board.move_piece([-1, -1], [4, 4]) # move piece test #4
# p board