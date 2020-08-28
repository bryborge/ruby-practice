# frozen_string_literal: true

require 'rspec'
require './title_case'

describe '#title_case' do
  it 'returns a string' do
    expect(title_case('hello')).to(be_a_kind_of(String))
  end

  it 'capitalizes the first letter of a word' do
    expect(title_case('narnia')).to eq('Narnia')
  end

  it 'capitalizes the first letter of all words in a multiple word title' do
    expect(title_case('eloquent ruby')).to eq('Eloquent Ruby')
    expect(title_case('a game of thrones')).to eq('A Game Of Thrones')
  end

  it 'downcases characters in all words that should not be capitalized' do
    expect(title_case('a cLASh oF kINGS')).to eq('A Clash Of Kings')
  end
end
