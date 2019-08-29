# This is becoming complex, can you find the proper method to log our code?
#
# Navigate the code with 'next', 'step' or 'continue'.
#   next: jumps to the next line of the code
#   step: jumps inside a method
#   continue: keeps the program execution until it finds another breakpoint
#
# USEFUL
#   information.methods - 1.methods
#   information.methods.grep /something/

require 'pry-byebug'
Dir["./dependencies/*.rb"].each {|file| require file }

class Information
  include One
  include Two
  include Three
  include Four
  include Five

  attr_reader :language, :version, :workshop

  def initialize(language, version, workshop)
    @language = language
    @version = version
    @workshop = workshop
  end

  def log
    please_log_this(language, version, workshop)
  end
end

binding.pry # This is our breakpoint, the program will stop executing here
information = Information.new('Ruby', '2.6.2', 'Ruby debugging')
information.log
