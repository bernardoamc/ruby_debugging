require 'debug'
require_relative 'dependencies/cool_logger.rb'

class Information
  extend CoolLogger

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

  def display_workshop_info
    puts "Workshop: #{@workshop}"
  end
end

binding.break # This is our breakpoint, the program will stop executing here
information = Information.log('Ruby', '3.2.2', 'Ruby debugging')
information.display_workshop_info
