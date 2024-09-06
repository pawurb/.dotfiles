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

def ppp(json)
  puts JSON.pretty_generate(json)
end

def measure_time(&block)
  starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  block.call
  ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = ending - starting
  puts elapsed
  elapsed
end

def sql(query)
  ApplicationRecord.connection.execute(query)
end
