# frozen_string_literal: true

##
# Ruby's Base Array Class
class Array
  ##
  # The queen_attack method checks to see if the queen on a chess board can attack another piece relative to her
  # position on the board.
  #   @param [Array] opponent_coordinates
  #   @return [Boolean]
  def queen_attack?(opponent_coordinates)
    horizontally_aligned = self[0] == opponent_coordinates[0]
    vertically_aligned = self[1] == opponent_coordinates[1]
    diagonally_aligned = (opponent_coordinates[0] - self[0] == 1 && opponent_coordinates[1] - self[1] == 1)

    horizontally_aligned || vertically_aligned || diagonally_aligned ? true : false
  end
end
