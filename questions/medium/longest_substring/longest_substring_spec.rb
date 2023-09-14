# frozen_string_literal: true

require_relative './longest_substring'
require 'rspec'

describe LongestSubstring do
  describe '#solve' do
    context 'when the input contains a substring of length three' do
      it 'returns 3' do
        expect(LongestSubstring.new(string: 'abcabc').solve).to eq(3)
      end

      it 'returns 5' do
        expect(LongestSubstring.new(string: 'abzeabc').solve).to eq(5)
      end

      it 'returns 1' do
        expect(LongestSubstring.new(string: 'bbbbbbbbb').solve).to eq(1)
      end
    end
  end
end
