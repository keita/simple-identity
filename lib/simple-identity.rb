require "forwardablex"
require "simple-identity/version"

module SimpleIdentity
  extend ForwardableX

  def self.included(klass)
    def klass.ignore_identity(symbol)
      (@__ignore_identities__ ||= []) << symbol
    end

    def klass.__ignore_identities__
      @__ignore_identities__ || []
    end
  end

  forward :class, :__ignore_identities__

  def eql?(other)
    return false unless other.kind_of?(self.class)
    __identities__.all? do |symbol|
      instance_variable_get(symbol) == other.__send__(symbol.to_s[1..-1])
    end
  end
  alias :"==" :eql?

  def hash
    __identities__.map{|symbol| instance_variable_get(symbol)}.hash
  end

  def __identities__
    instance_variables.select do |id|
      not(id.to_s.start_with?("@__") or __ignore_identities__.include?(id.to_s[1..-1].to_sym))
    end
  end
end
