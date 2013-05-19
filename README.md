# simple-identity

simple-identity is a Ruby library for providing simple identity methods of #eql?, #==, and #hash.

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
