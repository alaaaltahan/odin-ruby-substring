dictionary = %w[below down go going horn how howdy it i low
                own part partner sit]
def substrings(str, dictionary)
  # turn string to array
  arr = str.split(' ')
  # iterate over the array
  
      dictionary.reduce(Hash.new(0)) do |result,dictionary_word|
       arr.each do |string|
        if string.include?(dictionary_word)
          result[dictionary_word] += 1  
         end
       end 
       
     result
  end
end

solution = substrings("Howdy partner, sit down! How's it going?", dictionary)

debugger