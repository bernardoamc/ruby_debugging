# Our developers have decided to use a class to format our information, but
# they got something wrong. Can you help them fix it?
#
# Challenges:
#   1. Fix the problem
#   2. Can you explain why this happens?

# Navigate the code with 'next', 'step' or 'continue'.
#   next: jumps to the next line of the code
#   step: jumps inside a method
#   continue: keeps the program execution until it finds another breakpoint
#
# NEW
#   information.instance_variables

require 'pry-byebug'

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

binding.pry # This is our breakpoint, the program will stop executing here

information = Information.new('Ruby', '2.6.2', 'Ruby debugging')
information.to_s
