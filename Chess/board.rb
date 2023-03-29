require 'byebug'
require_relative 'piece.rb'

class Board
    attr_reader :board

    def initialize
        @board = Array.new(8) { Array.new(8, nil) }
        # populate_board
    end

    def populate_board
        @board[0..1].each do |row|
            row.map! { |n| n = Piece.new() }
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
        error_checker = start_pos + end_pos
        
        error_checker.each do |pos_num|
            if pos_num > 7 || pos_num < 0
                raise "Invalid start or end position!"
            end
        end

        piece = self[start_pos]
        raise "There is no piece at this position!" if piece == nil

        # self.[]=(end_pos, piece)
        # self.[]=(start_pos, nil)
        self[end_pos]=piece
        self[start_pos]=nil
        puts "Move is successful"

    end
end

board = Board.new
p board

# board.move_piece([6, 2], [4, 4]) # move piece test #1 passed
# p board

# board.move_piece([-4, -6], [4, 4]) # move piece test #2 partle passed
# p board

# board.move_piece([6, 2], [-2, -2]) # move piece test #3 passed
# p board

# board.move_piece([0, 0], [11, 4]) # move piece test #4 passed and optimized
# p board