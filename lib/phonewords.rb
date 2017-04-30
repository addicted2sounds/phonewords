require 'phonewords/finder'
require 'phonewords/version'
require 'byebug'

module PhoneWords

  def find_words(phone)
    finder = Finder.new
    finder.words phone
  end
end
