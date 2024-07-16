#write your code here
def translate(input)
  #takes every input word and splits it and does something to each word
  input.split.map do |word|
    # if the individual word is equal to a vowel then add 'ay'
    if word =~ /\A[aeiou]/ # match string against regex regular expression. matches start of string
      word += 'ay'
    # if the individual word contains a 'qu' or 'sch' in the beginning 
    # it extracts the letters into phoneme
    # adds the phoneme to the end of the word
    elsif word =~ /\A(qu|sch)/
      phoneme = word.match(/\A(qu|sch)/)[0]
      word = word[phoneme.length..-1] + phoneme + 'ay'
    # if the individual word starts with a consonant and doesn't contain 'qu'
    # add the consonants stored in consonant and add to the end of word
    elsif word =~ /\A[^aeiou]*qu/
      consonant = word.match(/\A[^aeiou]*qu/)[0]
      word = word[consonant.length..-1] + consonant + 'ay'
    # if the individual word starts with a consonant
    # the consonant is stored in the variable and added to the end of word
    elsif word =~ /\A[^aeiou]+/
      consonant = word.match(/\A[^aeiou]+/)[0]
      word = word[consonant.length..-1] + consonant + 'ay'
    end
  end.join(' ')
end