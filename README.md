# Phone::Words

Utility gem that finds all possible words or combination of words 
from the provided dictionary, that can be mapped back as a whole to the number

## Installation

This gem requires redis as a dependency, so you should have running redis 
server to run that
Add this line to your application's Gemfile:

```ruby
gem 'phone-words'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install phone-words

## Usage

Before first usage be sure to seed redis database first:
```
rake phonewords:setup
```
After that you can run a rake task to find possible combinations of words:
```
rake phonewords:find[6686787825]
```

