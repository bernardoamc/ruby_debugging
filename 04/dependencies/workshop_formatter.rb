module WorkshopFormatter
  def display_info
    binding.break
    # We can use backtrace or caller here to figure out the execution order
    # Try it out!
    puts "Workshop: #{workshop}"
  end
end
