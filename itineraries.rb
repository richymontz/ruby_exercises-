def popular_itineraty(itineraties, sequence)
  populars_counts = Hash.new(0)
  words = []
  itineraties.each do |iti|
    puts iti.length 
    puts (0..iti.length - sequence)
    (0..iti.length - sequence).each do |index|
      puts iti[index, sequence]
       populars_counts[iti[index, sequence]] += 1
    end
  end  
  puts populars_counts
  populars_counts.sort_by{ |key, counts| -counts }.first[0]
end

puts popular_itineraty ['ACAHJACNKCA', 'IGACGAGGHACA', 'ACAATAIGAKAS'], 2 