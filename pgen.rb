words =  IO.readlines "/usr/share/dict/words"
word = words[rand(words.length-1)]

word_seperators = %w[ : ( & ^ 5 $ # @ ?  < ]
rand_char = word_seperators[rand(word_seperators.length-1)]

pw=(rand_char + word + rand_char)


puts pw

