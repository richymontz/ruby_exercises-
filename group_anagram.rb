#* Write a Ruby method group_anagrams that takes an array of strings as input 
#* and groups the anagrams together. 
#* Anagrams are words or phrases formed by rearranging the letters of another.


#sorting chars 
def group_anagrams(strs)
  anagrams = Hash.new { |hash, key| hash[key] = [] }
  
  strs.each do |str|
    sorted_str = str.chars.sort.join #complexity O(n log n)
    anagrams[sorted_str] << str
  end
  
  anagrams.values
end

#Sorting bytes from chars
def group_anagrams_bytes(strs)
  anagrams = Hash.new { |hash, key| hash[key] = [] }
  
  strs.each do |str|
    bytes_array = str.bytes.sort # complexity O(n)
    anagrams[bytes_array] << str
  end
  
  anagrams.values
end

p group_anagrams(['cat', 'tea', 'eat', 'ate', 'bat'])
# OUTPUT: [["cat"], ["tea", "eat", "ate"], ["bat"]]
p group_anagrams(["abc", "bca", "cab", "aabbcc", "xyz", "zyx"])
# OUTPUT: [["abc", "bca", "cab"], ["aabbcc"], ["xyz", "zyx"]]
p group_anagrams(["abc", "bca", "cab", "ad", "da", "bc"])
# OUTPUT: [["abc", "bca", "cab"], ["ad", "da"], ["bc"]]
