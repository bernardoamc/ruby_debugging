require_relative 'extra_logger.rb'

class CoolLogger
  extend ExtraLogger

  class << self
    def log(language, version, workshop)
      puts "Language: #{@language}"
      puts "Version: #{@version}"
      super
    end
  end
end
