require 'rubygems'
require 'pp'

def clear
  system 'clear'
end

def info
  system "ruby -v"
  system "rvm gemset list |grep '=>'"
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

#startup commands
info
