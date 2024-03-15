# frozen_string_literal: true

class SiteMonitor
  attr_reader :state

  def initialize
    @state = 'Unknown'
  end

  def check_site
    result = simulate_site_check # Simulates a site status check

    case result
    when 'Up'
      site_up
    when 'Down'
      site_down
    else
      unknown_state
    end
  end

  private

  # In a real implementation, this would make an HTTP request to the site and
  # determine the status based on the HTTP response.
  def simulate_site_check
    ['Up', 'Down', 'Unknown'].sample
  end

  def site_up
    @state = 'Up'
    puts "Site is up."
  end

  def site_down
    @state = 'Down'
    puts "Site is down."
  end

  def unknown_state
    @state = 'Unknown'
    puts "Site status is unknown."
  end
end

# Create a new site monitor
monitor = SiteMonitor.new

puts "Initial site status: #{monitor.state}"

# Simulate checking the site status
5.times do |i|
  puts "\nChecking site (Attempt #{i + 1})..."
  monitor.check_site
  puts "Current site status: #{monitor.state}"
end
