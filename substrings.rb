def substrings(string, dictionary)

  # handles multiple words and case insensitive
  words = string.downcase.split(" ")
  
  dictionary.reduce(Hash.new(0)) do |list, substring|
    words.each do |word|
      if word.include?(substring)
        list[substring] += 1
      end
    end
    list
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)