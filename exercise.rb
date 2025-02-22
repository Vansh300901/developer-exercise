class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
  listOfWords = str.split(" ")
  returnString = ""

  listOfWords.each do |word|
    if word.length > 4
      match = word.match(/(\w+)(\W*)/)
      if match
        actual_word = match[1]
        punctuation = match[2]

        if actual_word[0] == actual_word[0].upcase
          replacement = "Marklar"
        else
          replacement = "marklar"
        end
        returnString += replacement + punctuation + " "
      else
          returnString += word + " "
      end
    else
      returnString += word + " "
    end
  end

  return returnString.strip
end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    if nth == 0 or nth == 1 or nth == 2
      return 0
    else
      sum = 0
      fib = [1, 1]
      for i in 2..nth-1
        fib.push(fib[i-1] + fib[i-2])
        if fib[i] % 2 == 0
          sum += fib[i]
        end
      end
      return sum
    end
  end
end