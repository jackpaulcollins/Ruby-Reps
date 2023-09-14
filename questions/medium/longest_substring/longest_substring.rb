# frozen_string_literal: true

# Returns the longest substring contained within a given string
class LongestSubstring
  def initialize(string:)
    @string = string
  end

  # we know as soon as we see a repeat we terminate our substring
  # could build a hash of the results of splitting on each char
  # "abzeabc"
  # { a => [b,z,e], b => [z,e,a], z => [e,a,b,c], e => [a,b,c], a => [b,c], b => [c], c => nil }

  def solve
    h = @string.split('').each_with_object({}).with_index do |(c, memo), i|
      remaining_chars = @string[i + 1..].split('')
      memo[i] = select_chars_until(remaining_chars, c)
    end

    h.max_by { |_, array| array.length }[1].length + 1
  end

  def select_chars_until(remaining_chars, stop_char)
    out = []
    remaining_chars.each do |current_char|
      break if current_char == stop_char

      out << current_char
    end

    out
  end
end
