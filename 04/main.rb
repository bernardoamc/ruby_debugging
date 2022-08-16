require 'pry-byebug'
require_relative 'dependencies/cool_formatter.rb'
require_relative 'dependencies/workshop_formatter.rb'

class Information
  include CoolFormatter
  include WorkshopFormatter

  attr_reader :language, :version, :workshop

  def initialize(language, version, workshop)
    @language = language
    @version = version
    @workshop = workshop
  end

  def display_info
    puts "Disclaimer: This is useful information."
    super # What is this?
    puts "Disclaimer: This is not useful information."
  end
end

information = Information.new('Ruby', '2.6.2', 'Ruby debugging')

binding.pry # This is our breakpoint, the program will stop executing here
information.display_info
