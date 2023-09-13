# frozen_string_literal: true

# solves the two sum problem
class TwoSum
  def initialize(nums:, target:)
    @nums = nums
    @target = target
  end

  def solve
    hash = {}

    @nums.each_with_index do |n, i|
      need = @target - n
      if hash.key?(need)
        puts "Indices #{hash[need]} and #{i} add up to #{@target}"
        break
      end
      hash[n] = i
    end
  end
end
