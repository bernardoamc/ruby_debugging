require 'pry-byebug'

def format_info(data)
  puts "Framework: #{data[1]}"
  puts "Version: #{data[2]}"
  puts "Workshop: #{data[3]}"
end

binding.pry # This is our breakpoint, the program will stop executing here

information = ['Ruby', '2.6.2', 'Ruby debugging']
format_info(information)
