# config/initializers/aliases.rb

def dbg msg
  p '!!!!!!!!!!!!!!!'
  p msg
  p '!!!!!!!!!!!!!!!'
end

class Object
  alias_method :bb, :byebug

  def tdbg
    dbg self
    self
  end
end
