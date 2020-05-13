module WorkshopFormatter
  def display_info
    binding.pry
    # We can use backtrace or caller here to figure out the execution order
    # Try it out!

    ## Debugging:
    # puts "Workshop caller: #{caller}"
    puts "Workshop: #{workshop}"
  end
end
