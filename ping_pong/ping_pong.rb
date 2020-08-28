# frozen_string_literal: true

##
# Ruby's Base Integer Class
class Integer
  ##
  # The ping_pong method replaces numbers divisible by 3 with 'ping', 5 with 'pong', and both 3 and 5 with 'pingpong'
  # and returns the resulting collection.
  #   @return [Array]
  def ping_pong
    output = []

    (1..self).each do |i|
      if (i % 3).zero? && (i % 5).zero?
        output.push('ping pong')
      elsif (i % 3).zero?
        output.push('ping')
      elsif (i % 5).zero?
        output.push('pong')
      else
        output.push(i)
      end
    end

    output
  end
end
