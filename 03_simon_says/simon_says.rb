#write your code here
# def echo
#   puts "Enter a phrase to echo: "
#   echo = gets.chomp
#   puts echo
# end

def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, num = 2)
  ([input] * num).join(' ')
end

def start_of_word(word, num)
  word[0...num]
end

def first_word(phrase)
  phrase.split.first
end

def titleize(phrase)
  little_words = %w[and the over] #%W allows me to create an array of strings without using commas or quotes
  words = phrase.split.map.with_index do |word, index|
    if little_words.include?(word) && index > 0
      word
    else
      word.capitalize
    end
  end
  words.join(' ')
end
