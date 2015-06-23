def translate(word)
  alphabet = ("a".."z").to_a
  vowels = ["a", "e", "i", "o", "u"]
  consonants = alphabet - vowels

  # words = words.split(" ")
  # word.map do

    if vowels.include?(word[0])
      word + "ay"
    elsif word[0..1] == "qu"
      word[2..-1] + "quay"
    elsif word[0..2] == "sch"
      word[3..-1] + word[0..2] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word[3..-1] + word[0..2] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + "ay"
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + "ay"
    end
end
