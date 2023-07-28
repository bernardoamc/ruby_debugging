require 'debug'

class Information

  attr_reader :language, :version, :workshop

  def initialize(language, version, workshop)
    @language = language
    @version = version
    @workshop = workshop
  end

  private

  def display_info
    puts "Language: #{language}"
    puts "Version: #{version}"
    puts "Workshop: #{workshop}"
  end
end

binding.break # This is our breakpoint, the program will stop executing here

information = Information.new('Ruby', '3.2.2', 'Ruby debugging')
information.display_info
