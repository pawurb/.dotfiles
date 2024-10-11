#Rails console configuration

#show SQL queries logs
require 'logger'

# def loud_logger
#   set_logger_to Logger.new(STDOUT)
# end

# def quiet_logger
#   set_logger_to nil
# end

# def set_logger_to(logger)
#   ActiveRecord::Base.logger = logger
#   ActiveRecord::Base.clear_reloadable_connections!
# end

# alias ll loud_logger
# alias ql quiet_logger

#turn on the logs by default
# IRB.conf[:IRB_RC] = Proc.new { loud_logger }
