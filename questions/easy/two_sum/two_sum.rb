# frozen_string_literal: true

# Given an array, returns the indices of two elements that add up to a supplied target int
class TwoSum
  def initialize(nums:, target:)
    @nums = nums
    @target = target
  end

  def solve
    hash = {}

    @nums.each_with_index do |n, i|
      need = @target - n
      return [hash[need], i] if hash.key?(need)

      hash[n] = i
    end
  end
end
