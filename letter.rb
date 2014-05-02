class Letter

  WORDS = %w(this is one sentence made out of lionoil with only one palindrome in it and
   that palindrome is actually two words smushed into one.)

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

  palindrome_solver(WORDS)

end