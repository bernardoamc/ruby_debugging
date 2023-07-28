require 'debug'

class Information
  def initialize(language, version, workshop)
    @language = language
    @version = version
    workshop = workshop
  end

  def to_s
    puts "Language: #{@language}"
    puts "Version: #{@version}"
    puts "Workshop: #{@workshop}"
  end
end

binding.break # This is our breakpoint, the program will stop executing here

information = Information.new('Ruby', '3.2.2', 'Ruby debugging')
information.to_s
