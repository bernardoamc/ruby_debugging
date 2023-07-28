require 'debug'
require_relative 'dependencies/cool_formatter.rb'

class Information
  include CoolFormatter # What is going on here?

  def initialize(language, version, workshop)
    @language = language
    @version = version
    @workshop = workshop
  end
end

information = Information.new('Ruby', '3.2.2', 'Ruby debugging')

binding.break # This is our breakpoint, the program will stop executing here
information.display_info
