#* Write a Ruby method group_anagrams that takes an array of strings as input 
#* and groups the anagrams together. 
#* Anagrams are words or phrases formed by rearranging the letters of another.

def group_anagrams(strs)
  anagrams = Hash.new { |hash, key| hash[key] = [] }
  strs.each do |str|
    sorted_str = str.chars.sort.join
    anagrams[sorted_str] << str
  end
  puts anagrams
end

puts group_anagrams(['cat', 'tea', 'eat', 'ate', 'bat'])
puts group_anagrams(["listen", "silent", "enlist", "heart", "earth", "hater"])
puts group_anagrams(["listen", "silent", "enlist", "heart", "earth", "h@ter"])