require "simple-identity/version"

module SimpleIdentity
  def eql?(other)
    return false unless other.kind_of?(self.class)
    instance_variables.all? do |symbol|
      instance_variable_get(symbol) == other.__send__(symbol.to_s[1..-1])
    end
  end
  alias :"==" :eql?

  def hash
    instance_variables.map{|symbol| instance_variable_get(symbol)}.hash
  end
end
