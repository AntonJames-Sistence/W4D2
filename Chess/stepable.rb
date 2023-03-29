module Stepable
    def moves
        # create array to collect moves
        possible_moves = []
  
        # iterate through each of the piece's possible move_diffs
        self.move_diffs.each do |possible_piece_position| #using on inst of a piece
            row, col = possible_piece_position # deconstract pos option

            attempted_pos = self.board[row][col]  #access to boards pos
            # check for empty spot or enemy piece, also eliminate problem with outside board pos or ally piece

            if attempted_pos.is_a?(NullPiece) || attempted_pos.color != self.color                 
                possible_moves << possible_piece_position
            end
        end

        possible_moves # return the final array of moves
    end
  
    private
  
    def move_diffs
      # subclass implements this
      raise NotImplementedError
    end
  end