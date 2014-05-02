class Letter

  def self.palindrome_solver(words)
    solutions = []
    words.each do |word|
      matched = true
      ((word.size % 2) == 1 ? (word.size - 1) / 2 : word.size / 2).times do |i|
        if word[i] == word[-i-1]
          matched = true
        else
          matched = false and return
        end
      end
      solutions << word if matched
    end
    puts solutions.each { |soln| soln + ' ' }
  end

  def random_letter(letters)
    letters[rand(letters.size) + 1]
  end

end