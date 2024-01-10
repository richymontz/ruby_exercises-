def group_anagrams(strs)
  anagrams = Hash.new { |hash, key| hash[key] = [] }
  strs.each do |str|
    sorted_str = str.chars.sort.join
    anagrams[sorted_str] << str
  end
  puts anagrams
end

puts group_anagrams(['cat', 'tea', 'eat', 'ate', 'bat'])