require 'redis'
require 'byebug'

require 'phonewords/finder'
require 'phonewords/redis_builder'
require 'phonewords/version'

module PhoneWords
  def self.find_words(phone)
    Finder.new.words phone
  end

  def self.setup
    RedisBuilder.new(Redis.new).seed_dictionary
  end

  def self.redis
    Redis.new
  end
end
