def number_to_words(n)
  # Define arrays for the names of numbers from 1 to 19 and tens multiples.
  ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  if n < 20
    return ones[n]
  elsif n < 100
    return tens[n / 10] + (n % 10 != 0 ? " " + ones[n % 10] : "")
  elsif n < 1000
    return ones[n / 100] + " hundred" + (n % 100 != 0 ? " and " + number_to_words(n % 100) : "")
  else
    return "Number out of range"
  end
end

# Test cases
puts number_to_words(1)   # Output: "one"
puts number_to_words(99)  # Output: "thirty one"
