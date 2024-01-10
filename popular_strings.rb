def extract_substrings(input_string, substring_length)
  substrings = []
  
  (0..input_string.length - substring_length).each do |index|
    puts index
    substrings << input_string[index, substring_length]
  end
  
  substrings
end

input = "ACAGHYTLAACAKJAACA"
substring_length = 3
result = extract_substrings(input, substring_length)
puts result.uniq