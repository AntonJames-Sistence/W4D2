require_relative 'piece.rb'
require 'singleton'

class NullPiece < Piece
    include Singleton

    def initialize
        super
    end

    def moves
    end

    def symbol
    end
end

# p = NullPiece.instance #couldn't create an instance