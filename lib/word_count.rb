class String
  define_method(:word_count) do |word_to_count, count_partial|
    word_to_count_cleaned = word_to_count.gsub(/[^0-9A-Za-z ]/, '').downcase()
    string_array = self.gsub(/[^0-9A-Za-z ]/, '').downcase().split(" ")
    number_of_words = 0
    if count_partial
      string_array.each() do |word|
        if word.include?(word_to_count_cleaned)
          number_of_words += 1
        end
      end

    else
      string_array.each() do |word|
        if word == word_to_count_cleaned
          number_of_words += 1
        end
      end
    end
    number_of_words
  end
end
