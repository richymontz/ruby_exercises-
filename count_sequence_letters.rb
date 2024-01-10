#aaabbcaddcxx -> 3a2b1c1a2d1c2x

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

#aaabbcaddcxx -> 3a2b1c1a2d1c2x

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
