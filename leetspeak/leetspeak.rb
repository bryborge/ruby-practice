# frozen_string_literal: true

##
# Ruby's Base String Class
class String
  ##
  # The leetspeak method converts a string to 1337 sp34k and returns it.
  #   @return [String]
  def leetspeak
    characters = split('')

    characters.each_with_index do |c, i|
      characters[i] = '3' if c == 'e'
      characters[i] = '0' if c == 'o'
      characters[i] = '1' if c == 'I'
      characters[i] = 'z' if c == 's' && i > 0
    end

    characters.join
  end
end
