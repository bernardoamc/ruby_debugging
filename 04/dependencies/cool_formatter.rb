module CoolFormatter
  def display_info
    puts "Language: #{language}"
    puts "Version: #{version}"

    ## Debugging:
    # puts "CoolFormatter caller: #{caller}"
    super # will call WorkshopFormatter in the fixed version
  end
end
