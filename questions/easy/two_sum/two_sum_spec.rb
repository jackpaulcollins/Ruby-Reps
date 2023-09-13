# frozen_string_literal: true

# spec/two_sum_spec.rb

require_relative './two_sum' # Adjust the path as needed
require 'rspec'

describe TwoSum do
  describe '#solve' do
    context 'when there are two distinct numbers that add up to the target' do
      it 'returns the indices of the numbers that add up to the target' do
        nums = [2, 7, 11, 15]
        target = 9

        expect { TwoSum.new(nums: nums, target: target).solve }.to output("Indices 0 and 1 add up to 9\n").to_stdout
      end
    end

    context 'when there are two instances of the same number that add up to the target' do
      it 'returns the separate indices of the same number that add up to the target' do
        nums = [4, 8, 9, 11, 9]
        target = 18

        expect { TwoSum.new(nums: nums, target: target).solve }.to output("Indices 2 and 4 add up to 18\n").to_stdout
      end
    end
  end
end
