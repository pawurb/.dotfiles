
require 'rubygems'

begin
  require 'awesome_print'
  #AwesomePrint.irb!
rescue LoadError => err
  warn "Couldn't load awesome_print: #{err}"
end

#clear console
def clear
  system 'clear'
end

#display ruby version and gemset
def info
  system "ruby -v"
  system "rvm gemset list |grep '=>'"
end

#display commands history
def history
  puts Readline::HISTORY.to_a
end

IRB.conf[:PROMPT_MODE] = :SIMPLE

alias q exit
alias c clear
alias i info
alias h history
alias pp ap

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

def allocate_count
  GC.disable
  before = ObjectSpace.count_objects
  yield
  after = ObjectSpace.count_objects
  after.each { |k, v| after[k] = v - before[k] }
  after[:T_HASH] -= 1
  after[:FREE] += 1
  GC.enable
  after.reject { |k, v| v == 0 }
end

def all_allocations
  ObjectSpace.each_object.map(&:class)
  .each_with_object(Hash.new(0)) do |e, h|
    h[e] += 1
  end.sort_by { |k, v| v }
end

#startup commands
info
