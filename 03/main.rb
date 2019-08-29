# Tired to format the data themselves our developers decided to use a dependency,
# but something went terribly wrong.
#
# Navigate the code with 'next', 'step' or 'continue'.
#   next: jumps to the next line of the code
#   step: jumps inside a method
#   continue: keeps the program execution until it finds another breakpoint
#
# NEW
#   information.method(:display_info).source_location
#   Information.ancestors
#
# There are two ways to solve this problem, can you figure it out?

require 'pry-byebug'
require_relative 'dependencies/cool_formatter.rb'

class Information
  include CoolFormatter # What is going on here?

  def initialize(language, version, workshop)
    @language = language
    @version = version
    @workshop = workshop
  end
end

information = Information.new('Ruby', '2.6.2', 'Ruby debugging')

binding.pry # This is our breakpoint, the program will stop executing here
information.display_info
