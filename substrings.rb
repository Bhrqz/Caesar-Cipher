dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Gimme a word"

word = gets.chomp.downcase
result = {}

def substrings(word, dictionary)

  dictionary.each do |dictionary_element|

    if word.include?(dictionary_element) 
      puts dictionary_element

      #just left the final hash. Have to find how to make it.

    elsif dictionary_element.include?(word)
      puts dictionary_element
    end

  end
  
end



substrings(word, dictionary)