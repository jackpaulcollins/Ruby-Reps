# frozen_string_literal: true

require_relative './two_sum'
require 'rspec'

describe TwoSum do
  describe '#solve' do
    context 'when there are two distinct numbers that add up to the target' do
      it 'returns the indices of the numbers that add up to the target' do
        nums = [2, 7, 11, 15]
        target = 9

        expect(TwoSum.new(nums: nums, target: target).solve).to eq([0, 1])
      end
    end

    context 'when there are two instances of the same number that add up to the target' do
      it 'returns the separate indices of the same number that add up to the target' do
        nums = [4, 8, 9, 11, 9]
        target = 18

        expect(TwoSum.new(nums: nums, target: target).solve).to eq([2, 4])
      end
    end
  end
end
