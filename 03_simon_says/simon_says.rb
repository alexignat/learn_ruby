def echo(word)
  word
end

def shout(word)
  word.upcase
end

def shoult(sentence)
  sentence.upcase
end

def repeat(word, x = 2)
  words = []

  x.times.each do
    words << word
  end

  words.join(" ")
end

def start_of_word(word, x)
  word[0..x-1]
end

def first_word(words)
  sentence = words.split(" ")
  sentence[0]
end

# def titleize(phrase)
#   sentence = phrase.split(" ")
#   sentence_1 = sentence.map { |x| x.capitalize}
#   sentence_2 = sentence_1.join(" ")
# end

def titleize(phrase)
  words_to_ignore = ["and", "over", "the"]
  sentence = phrase.split(" ").map do |x|
    unless words_to_ignore.include? x
      x.capitalize
    else
      x
    end
  end
  sentence[0].capitalize!
  sentence = sentence.join(" ")
end










