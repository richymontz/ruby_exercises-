# Given a roman numeral, convert it to an integer.
# Leetcode exercise link https://leetcode.com/problems/roman-to-integer/description/

def roman_to_int(roman_string)
  roman_numerals = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }.freeze

  prev_value = 0
  result = 0

  roman_string.reverse.each_char do |char|
    value = roman_numerals[char]
    if value < prev_value
        result -= value
    else
        result += value
    end

    prev_value = value
  end

  result
end

def roman_to_int_fast(roman_string)
  roman_numerals = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }.freeze

  prev_value = 0
  result = 0

  roman_string.each_char do |char|
    value = roman_numerals[char]

    result += value
    result -= 2 * prev_value if prev_value < value
    prev_value = value
  end
  result
end
