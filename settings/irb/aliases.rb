# config/initializers/aliases.rb

def dbg msg
  p '!!!!!!!!!!!!!!!'
  p msg
  p '!!!!!!!!!!!!!!!'
end

def tdbg
  dbg self
  self
end

class Object
  alias_method :bb, :byebug
  alias_method :ne, :next
  alias_method :co, :next
end
