# Create a method (function) that takes a word as an argument
# Array of valid substring as second argument
# Return a hash listing each substring
  # Including howmany times it was found

  # Example: { "below" => 1, "low" => 1 }

def substrings(text,dictionary)
result = Hash.new(0)
lowered_text = text.downcase

dictionary.each do |word|
    matches = lowered_text.scan(word).length
    result[word] = matches unless matches == 0
  end
    return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
