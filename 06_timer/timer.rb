class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = @seconds % 60
 
    format("%02d:%02d:%02d", hours, minutes, seconds) #formatting integers
  end
    
  def add_time(num)
    @seconds += num
  end
end

timer = Timer.new
puts timer.time_string

timer.add_time(12)
puts timer.time_string
