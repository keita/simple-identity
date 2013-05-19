require "simple-identity/version"

module SimpleIdentity
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
    instance_variables.select{|id| not(id.to_s.start_with?("@__"))}
  end
end
