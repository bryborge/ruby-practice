# frozen_string_literal: true

require 'rspec'
require './clock_angle'

# describe 'String#clock_angle' do
#   it "returns the minute hand's angle in degrees" do
#     expect('12:00'.clock_angle).to(eq(0))
#     expect('01:01'.clock_angle).to(eq(6))
#     expect('01:05'.clock_angle).to(eq(30))
#     expect('01:22'.clock_angle).to(eq(132))
#     expect('01:30'.clock_angle).to(eq(180))
#     expect('01:30'.clock_angle).to(eq(180))
#   end
# end

##
# Private helper method tests
#

describe 'String#calculate_minute_angle' do
  it "returns the minute-hand's angle in degrees" do
    @obj = String.new

    # 0 minutes
    minute_0 = @obj.send(:calculate_minute_angle, 0)
    expect(minute_0).to(eq(0))

    # 1 minute
    minute_1 = @obj.send(:calculate_minute_angle, 1)
    expect(minute_1).to(eq(6))

    # 30 minutes
    minute_30 = @obj.send(:calculate_minute_angle, 30)
    expect(minute_30).to(eq(180))

    # 59 minutes
    minute_59 = @obj.send(:calculate_minute_angle, 59)
    expect(minute_59).to(eq(354))

    # 60 minutes
    minute_60 = @obj.send(:calculate_minute_angle, 60)
    expect(minute_60).to(eq(0))
  end
end

describe 'String#calculate_hour_angle' do
  it "returns the hour-hand's angle in degrees" do
    @obj = String.new

    # 0 hours
    hour_0 = @obj.send(:calculate_hour_angle, 0)
    expect(hour_0).to(eq(0))

    # 1 hour
    hour_1 = @obj.send(:calculate_hour_angle, 1)
    expect(hour_1).to(eq(30))

    # 3 hours
    hour_3 = @obj.send(:calculate_hour_angle, 3)
    expect(hour_3).to(eq(90))

    # 11 hours
    hour_11 = @obj.send(:calculate_hour_angle, 11)
    expect(hour_11).to(eq(330))

    # 12 hours
    hour_12 = @obj.send(:calculate_hour_angle, 12)
    expect(hour_12).to(eq(0))
  end
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


# "12:00".clock_angle
# -> 0
# "06:00".clock_angle
# -> 180
# 1. explode into array [12, 0]
#   (12x 30 degree increments = 12 x 30 = 360)
#   (6 x 60 = 360)
# 2.
