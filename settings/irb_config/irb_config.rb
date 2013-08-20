
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


#startup commands
info