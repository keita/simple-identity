require 'simplecov'
require 'simple-identity'

class A
  include SimpleIdentity
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
end

describe "SimpleIdentity" do
  it 'should equal' do
    A.new(1,2,3).should == A.new(1,2,3)
  end

  it 'should not equal' do
    A.new(1,2,3).should != A.new(3,2,1)
    A.new(1,2,3).should != 1
  end

  it 'should have same hash values' do
    A.new(1,2,3).hash.should == A.new(1,2,3).hash
  end

  it 'should have different hash values' do
    A.new(1,2,3).hash.should != A.new(3,2,1).hash
  end
end
