class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  # Punctuation at the end of words should be retained.
  def self.marklar(str)
    str.split.map do |word|
      # Match the word and optional punctuation
      match = word.match(/^(\w+)(\W*)$/)
      if match && match[1].length > 4
        replacement = match[1][0] =~ /[A-Z]/ ? "Marklar" : "marklar"
        replacement + match[2]
      else
        word
      end
    end.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  def self.even_fibonacci(nth)
    a, b = 1, 1
    sum = 0
  
    (1..nth).each do
      sum += a if a.even?
      a, b = b, a + b
    end
  
    sum
  end
end
