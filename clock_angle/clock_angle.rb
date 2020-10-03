# frozen_string_literal: true

##
# Ruby's Base String Class
class String
  def clock_angle
    arr = split(':')

    hour_angle = calculate_hour_angle(arr[0].to_i)
    minute_angle = calculate_minute_angle(arr[1].to_i)


  end

  def calculate_hour_angle(hour)
    hour * 30
  end

  def calculate_minute_angle(minute)
    minute * 6
  end
end
