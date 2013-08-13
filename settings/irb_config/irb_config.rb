system "rvm gemset list |grep '=>'"
system "ruby -v"

require 'rubygems'

begin
  require 'awesome_print'
rescue LoadError => err
  warn "Couldn't load awesome_print: #{err}"
end


IRB.conf[:PROMPT_MODE] = :SIMPLE

alias q exit

Hirb.disable if defined? Hirb #I don't like Hirb


class Object
  def interesting_methods
    case self.class
    when Class
      self.public_methods.sort - Object.public_methods
    when Module
      self.public_methods.sort - Module.public_methods
    else
      self.public_methods.sort - Object.new.public_methods
    end
  end
end