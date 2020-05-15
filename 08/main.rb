# Our method is clearly there, right? What is wrong with this code?
#
# Challenges:
#   1. Fix the problem
#   2. Can you explain why this happens?
#   3. What's the difference between passing true or false to methods like:
#     * instance_methods
#     * public_methods
#     * private_methods

# Navigate the code with 'next', 'step' or 'continue'.
#   next: jumps to the next line of the code
#   step: jumps inside a method
#   continue: keeps the program execution until it finds another breakpoint
#
# USEFUL:
#   Information.instance_methods(false)
#   information.public_methods(false)
#   information.private_methods(false)

require 'pry-byebug'

class Information

  attr_reader :language, :version, :workshop

  def initialize(language, version, workshop)
    @language = language
    @version = version
    @workshop = workshop
  end

  ## Problem:
  # private

  def display_info
    puts "Language: #{language}"
    puts "Version: #{version}"
    puts "Workshop: #{workshop}"
  end
end

# binding.pry # This is our breakpoint, the program will stop executing here

# puts "instance_methods(false): #{Information.instance_methods(false).join(', ')}"
# puts "instance_methods(true): #{Information.instance_methods(true).join(', ')}"
# puts "public_methods(false): #{Information.public_methods(false).join(', ')}"
# puts "public_methods(true): #{Information.public_methods(true).join(', ')}"
# puts "private_methods(false): #{Information.private_methods(false).join(', ')}"
# puts "private_methods(true): #{Information.private_methods(true).join(', ')}"

information = Information.new('Ruby', '2.6.2', 'Ruby debugging')
information.display_info
