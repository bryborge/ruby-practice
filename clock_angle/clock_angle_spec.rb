# frozen_string_literal: true

require 'rspec'
require './clock_angle'

describe 'String#clock_angle' do
  it "returns the angle between the hour- and minute- hands" do
    # Midnight
    angle_0 = '00:00'.clock_angle
    expect(angle_0).to(eq(0))
  
    # 1:00am
    angle_1 = '01:00'.clock_angle
    expect(angle_1).to(eq(30))
  end
end

##
# Private helper method tests
#

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
