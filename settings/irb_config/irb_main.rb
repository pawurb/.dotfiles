#load configuration files
require_relative 'irb_config.rb'


if ( ENV['RAILS_ENV'] || defined? Rails )
  begin
    require_relative 'rails_irb_config.rb'
  rescue Exception => err
    warn "Could not load rails config because of: #{err.message}"
  end
end