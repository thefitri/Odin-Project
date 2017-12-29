def substrings str, dictionary
  match = {}
  words = str.strip.downcase.split
  dictionary.map {|dictionary_word| match[dictionary_word.strip.downcase] = 0}
  
  words.map do |word|
    match.map do |key, value|
      match[key] += word =~ /#{key}/ ? 1 : 0
    end
  end
  
  return match.select {|key, value| value > 0}
end

word = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "usage:\tsubstrings([word:string], [dictionary:array])"
