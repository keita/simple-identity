# simple-identity

simple-identity is a Ruby library for providing simple identity methods of #eql?, #==, and #hash.

[![Gem Version](https://badge.fury.io/rb/simple-identity.png)](http://badge.fury.io/rb/simple-identity) [![Build Status](https://travis-ci.org/keita/simple-identity.png?branch=master)](https://travis-ci.org/keita/simple-identity) [![Coverage Status](https://coveralls.io/repos/keita/simple-identity/badge.png?branch=master)](https://coveralls.io/r/keita/simple-identity) [![Code Climate](https://codeclimate.com/github/keita/simple-identity.png)](https://codeclimate.com/github/keita/simple-identity)

## Installation

    $ gem install simple-identity

## Usage

```ruby
class A
  include SimpleIdentity
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
end

A.new(1,2,3) == A.new(1,2,3) # true
A.new(1,2,3) != A.new(3,2,1) # true
````

## License

simple-identity is free software distributed under MIT license.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
