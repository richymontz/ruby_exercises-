# Write a method that takes a string as input and returns a new string that represents the run-length encoding of the input string. The output string should include each character followed by the number of times it appears consecutively in the input.

#Input:
#A string containing only lowercase letters.
#Example: "aaabbcaddcxx"

#Output:
#A string representing the run-length encoding of the #input.
#Example: "3a2b1c1a2d1c2x"

#Constraints:
# 1. The input string will contain at least one character.
# 2. Characters are case-sensitive (although only lowercase #letters are used here).

def count_letters(string)
  grouped = Hash.new(0) # { key: value }
  index_group = 0
  chars = string.chars
  
  chars.each_with_index do |char, index|
      if chars[index + 1] == char
          grouped["#{char}#{index_group}"] += 1
      else
          grouped["#{char}#{index_group}"] += 1
          index_group += 1
      end
  end

 grouped.each{|key, value| puts "#{key[0]} - #{value}" }
end

def count_letters(string)
    grouped = []  # Instead of a hash, use an array to store pairs of character and count
    count = 1

    string.chars.each_with_index do |char, index|
        if string[index + 1] == char
            count += 1
        else
            grouped << "#{count}#{char}"  # Add count and character to the result array
            count = 1  # Reset count for the next character
        end
    end

    grouped.each { |pair| puts pair }
end
