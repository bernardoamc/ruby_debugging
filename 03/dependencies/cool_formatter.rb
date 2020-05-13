module CoolFormatter
  def display_info
    ## Problem:
    # puts "Language: #{language}"
    # puts "Version: #{version}"
    # puts "Workshop: #{workshop}"

    ## Fix:
    puts "Language: #{@language}"
    puts "Version: #{@version}"
    puts "Workshop: #{@workshop}"
  end
end
