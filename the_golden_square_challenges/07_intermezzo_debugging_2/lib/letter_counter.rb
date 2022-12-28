class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    # set defaul values to 0
    counter = Hash.new(0)
    most_common = nil
    # most common count must be set to zero
    most_common_count = 0
    @text.chars.each do |char|
      next unless is_letter?(char)
      # all we want to do here is add 1 to all the characters.
      counter[char] += 1
      if counter[char] > most_common_count
        most_common = char
        most_common_count = counter[char]
      end
    end
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common

# Intended output:
# [2, "i"]