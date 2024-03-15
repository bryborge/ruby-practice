# frozen_string_literal: true

class TrafficLight
  attr_accessor :state

  def initialize
    @state = 'Red'
  end

  def change
    case @state
    when 'Red'
      turn_green
    when 'Green'
      turn_yellow
    when 'Yellow'
      turn_red
    else
      puts "Invalid state!"
    end
  end

  private

  def turn_green
    @state = 'Green'
    puts "The light is now Green."
  end

  def turn_yellow
    @state = 'Yellow'
    puts "The light is now Yellow."
  end

  def turn_red
    @state = 'Red'
    puts "The light is now Red."
  end
end

# Create a new traffic light
traffic_light = TrafficLight.new

puts "Initial state: #{traffic_light.state}"

# Change the state of the traffic light
traffic_light.change # Green
traffic_light.change # Yellow
traffic_light.change # Red
