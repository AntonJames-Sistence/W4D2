module Stepable
    # def moves
      # create array to collect moves
    #     possible_moves = []
  
    #   # iterate through each of the piece's possible move_diffs
    #     self.move_diffs.each do |possible_position| #using on inst of a piece
    #         # check if this pos is on a board ???
    #         # is occupied with piece of same colour?
    #         self.board.[](possible_position)

    #     # for each move_diff, increment the piece's position to generate a new position
    #     # add the new position to the moves array if it is:
    #       # on the board and empty
    #       # OR on the board and contains a piece of the opposite color
  
    #   # return the final array of moves
    #     possible_moves
    # end
  
    private
  
    def move_diffs
      # subclass implements this
      raise NotImplementedError
    end
  end