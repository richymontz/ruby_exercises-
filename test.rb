string = "este es un mensaje de prueba"
upper = %w{ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z }
lower = %w{ a b c d e f g h i j k l m n o p q r s t u v w x y z }

words = string.split(" ")
swapped = ""

words.each do |word|
  swapped_word = word[0]
  word[1..].split('').each do |l|
    index = lower.index(l)

    if index
      swapped_word << upper[index]
    else
      swapped_word << lower[upper.index(l)]
    end
  end

  swapped << swapped_word + " "
end

puts swapped
