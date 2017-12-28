def substrings str, word_array = dictionary
  str.downcase!
  str.split(/\w+/)
  return nil
end

puts "Usage:\nsubstrings([string], [array])"
