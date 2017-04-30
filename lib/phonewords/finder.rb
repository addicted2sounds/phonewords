module PhoneWords
  class Finder
    DICTIONARY = 'dictionary.txt'
    MIN_LENGTH = 3
    NUMBER_LETTERS = {
      '2' => %w(a b c),
      '3' => %w(d e f),
      '4' => %w(g h i),
      '5' => %w(j k l),
      '6' => %w(m n o),
      '7' => %w(p q r s),
      '8' => %w(t u v),
      '9' => %w(w x y z)
    }

    def initialize
      @words = File.readlines(DICTIONARY).map(&:strip)
    end

    def words(phone)
      @numbers = phone.to_s.chars
      letters = phone.to_s.chars.map { |num| NUMBER_LETTERS[num] }
      combinations = NUMBER_LETTERS[@numbers.first]
                       .product(*letters[1, MIN_LENGTH - 1])
      combinations.map do |combination|
        words_starting_with combination.join.upcase
      end
    end

    private

    def words_starting_with(str)
      @words.select do |word|
        word.start_with? str
      end
    end
  end
end