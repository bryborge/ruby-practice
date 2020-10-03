# frozen_string_literal: true

require 'rspec'
require './clock_angle'

describe 'String#clock_angle' do
  it 'calculates the hour-hand angle' do
    expect()
  end
  # "12:00".clock_angle
  # -> 0
  # "06:00".clock_angle
  # -> 180
  # 1. explode into array [12, 0]
  #   (12x 30 degree increments = 12 x 30 = 360)
  #   (6 x 60 = 360)
  # 2.
end

# hour hand = 12 - x = y
#   ex: 03:00
#     3 x 30 = 90
#     12 - 3 = 9
#     60 - 60 = 0
#
#     4 x 30 = 120
#     12 - 4 = 8
#     60 - 60 = 0
# minute hand = 60 - x = y
