dictionary = %w[below down go going horn how howdy it i low
                own part partner sit]
def substrings(str, dictionary)
  # turn string to array
  arr = str.split(' ')
  # iterate over the array

  dictionary.each_with_object(Hash.new(0)) do |dictionary_word, result|
    arr.each do |string|
      result[dictionary_word] += 1 if string.include?(dictionary_word)
    end
  end
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

debugger
