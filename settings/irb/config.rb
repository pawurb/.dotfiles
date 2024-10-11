require 'rubygems'
require 'pp'

IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
IRB.conf[:AUTO_INDENT] = false
IRB.conf[:USE_MULTILINE] = false

def clear
  system 'clear'
end

def info
  system "ruby -v"
end

def re
  reload!
end

def history
  puts Readline::HISTORY.to_a
end

IRB.conf[:PROMPT_MODE] = :SIMPLE

alias q exit
alias c clear
alias i info
alias h history

Hirb.disable if defined? Hirb #I don't like Hirb

class Object
  def tdbg
    dbg self
    self
  end

  def inheritance_chain
    self.class.ancestors - self.class.included_modules
  end

  def modules
    self.class.included_modules
  end

  def my_methods
    self.methods - Object.methods
  end
end

def all_allocations
  ObjectSpace.each_object.map(&:class)
  .each_with_object(Hash.new(0)) do |e, h|
    h[e] += 1
  end.sort_by { |k, v| v }
end

def dbg msg
  p '!!!!!!!!!!!!!!!!!!'
  p msg
  p '!!!!!!!!!!!!!!!!!!'
end

def dbg_to_file(text, filename = "tmp/dbg.txt")
  File.open(filename, "w") { |f| f.write text }
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
end

#startup commands
info
