require_relative 'extra_logger.rb'

class CoolLogger
  extend ExtraLogger

  class << self
    def log(language, version, workshop)
      ## Problem:
      # puts "Language: #{@language}"
      # puts "Version: #{@version}"
      # super

      ## Fix:
      puts "Language: #{language}"
      puts "Version: #{version}"
      super(workshop)
    end
  end
end
