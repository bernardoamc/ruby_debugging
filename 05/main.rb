# Our developers have decided to refactor our code, can you figure out what went wrong?
#
# Navigate the code with 'next', 'step' or 'continue'.
#   next: jumps to the next line of the code
#   step: jumps inside a method
#   continue: keeps the program execution until it finds another breakpoint
#
# USEFUL
#   Information.singleton_class.ancestors

require 'pry-byebug'
require_relative 'dependencies/cool_logger.rb'

class Information
  # Include: Ruby will insert the module into the ancestors chain of the class, just after its superclass
  # Extends: Import the module methods as **class methods**.
  extend CoolLogger

  class << self # What is this?
    # **Class methods** block
    # From Ruby style guide: https://github.com/github/rubocop-github/blob/master/STYLEGUIDE.md
    #   - Avoid class << self except when necessary, e.g. single accessors and aliased attributes.
    # Why: https://stackoverflow.com/questions/10964081/class-self-vs-self-method-with-ruby-whats-better
    def log(language, version, workshop)
      puts "Start logging..."
      ## Problem:
      #   - extend CoolLogger import module methods as class methods.
      #   - class << self to define class methods.
      #   So we declare a class method log in Information, and need to call our parent's
      #   log method with only 2 arguments
      # super

      ## Fix:
      super(language, version)

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

# binding.pry # This is our breakpoint, the program will stop executing here
information = Information.log('Ruby', '2.6.2', 'Ruby debugging')
information.display_workshop_info
