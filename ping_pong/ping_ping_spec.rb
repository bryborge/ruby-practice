# frozen_string_literal: true

require 'rspec'
require './ping_pong'

describe 'Integer#ping_pong' do
  it "returns an array with length equal to the object value it's called on" do
    expect(7.ping_pong.size).to(eq(7))
  end

  it 'replaces numbers that are multiples of 3 with the word "ping"' do
    expected_result = [1, 2, 'ping']

    expect(3.ping_pong).to(include('ping'))
    expect(3.ping_pong).to(eq(expected_result))
  end

  it 'replaces numbers that are multiples of 5 with the word "pong"' do
    expected_result = [1, 2, 'ping', 4, 'pong']

    expect(5.ping_pong).to(include('ping'))
    expect(5.ping_pong).to(include('pong'))
    expect(5.ping_pong).to(eq(expected_result))
  end

  it 'replaces numbers that are multiples of 3 and 5 with the word "ping pong"' do
    expected_result = [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'ping pong']

    expect(15.ping_pong).to(include('ping'))
    expect(15.ping_pong).to(include('pong'))
    expect(15.ping_pong).to(include('ping pong'))
    expect(15.ping_pong).to(eq(expected_result))
  end
end
