class Book
# write your code here
  attr_accessor :title #lets me use title in methods

# Book Titles in English obey some strange capitalization rules. For example, "and" is lowercase in 
# "War and Peace". This test attempts to make sense of some of those rules.

  def title=(title)
    @title = self.class.capitalize_title(title)
  end

  def self.capitalize_title(title)
    exceptions = %w[the a an and of in] # making an array of exceptions that include certain words
    title.split.each_with_index.map do |word, index| # split each word in the title and provides index to know positioning
      if index == 0 || !exceptions.include?(word.downcase) # if the index is at position 0 or(inclusive or) if the index is positioned at a word that is not stored in the exclusive variable
        word.capitalize
      else
        word.downcase
      end
    end.join(' ')
  end
end

book = Book.new
book.title = 'war and peace'
puts book.title