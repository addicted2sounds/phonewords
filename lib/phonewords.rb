require 'phonewords/finder'
require 'phonewords/redis_builder'
require 'phonewords/version'
require 'byebug'

module PhoneWords
  def self.find_words(phone)
    finder = Finder.new
    finder.words phone
  end

  def self.setup
    RedisBuilder.new.seed_dictionary
  end
end
