# Our developers have decided to refactor our code, can you figure out what went wrong?
#
# Navigate the code with 'next', 'step' or 'continue'.
#   next: jumps to the next line of the code
#   step: jumps inside a method
#   continue: keeps the program execution until it finds another breakpoint
#
# USEFUL
#   Information.singleton_class.ancestors
#   Information.method(:log).super_method.source_location

require 'pry-byebug'
require_relative 'dependencies/cool_logger.rb'

class Information < CoolLogger
  class << self # What is this?
    def log(language, version, workshop)
      puts "Start logging..."
      super
      new(language, version, workshop)
    end
  end

  attr_reader :language, :version, :workshop

  def initialize(language, version, workshop)
    @language = language
    @version = version
    @workshop = workshop
  end
end

# binding.pry # This is our breakpoint, the program will stop executing here
information = Information.log('Ruby', '2.6.2', 'Ruby debugging')
