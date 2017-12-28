def caesar_cipher plain_text, shift
  encrypted_text = ""
  plain_text.each_char do |char|
    if char =~ /[A-Z]/
      char = (char.ord - 65 + shift) % 26 + 65
    elsif char =~ /[a-z]/
      char = (char.ord - 97 + shift) % 26 + 97
    end
    encrypted_text << char
  end
  return encrypted_text
end

puts "Usage:\ncaesar_cipher([plain text], [shift key])"
