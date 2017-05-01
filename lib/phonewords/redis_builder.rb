module PhoneWords
  class RedisBuilder
    DICTIONARY = 'dictionary.txt'
    attr_reader :redis

    def initialize(redis, dictionary = DICTIONARY)
      @redis = redis
      @words = File.readlines(dictionary).map &:strip
    end

    def seed_dictionary
      @words.each do |word|
        next if word.length < Finder::MIN_LENGTH
        redis.sadd "words:#{word[0, Finder::MIN_LENGTH]}", word
        redis.hset 'word_nums', word, word_to_numbers(word)
      end
    end

    private

    def word_to_numbers(word)
      word.downcase.chars.map do |char|
        Finder::NUMBER_LETTERS.find { |k,v| v.include? char }.first[0]
      end.join
    end
  end
end