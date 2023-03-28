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
        @board[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        piece = self.[](start_pos)
        self.[]=(end_pos, piece)
        self.[]=(start_pos, nil)
    end
end

board = Board.new
p board
board.move_piece([6, 1], [4, 4])
p board