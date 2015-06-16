words = "the car that went poof"
p words.split.map { |word| word.downcase.capitalize }.join(' ')