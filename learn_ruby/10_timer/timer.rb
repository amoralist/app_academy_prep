class Timer
  
  def initialize
    @seconds = 0
  end  
  
  def seconds
    @seconds
  end
  
  def seconds=(sec = 0)
    @seconds += sec
    return @seconds
  end
  
  def time_string
    hours = (@seconds / 3600.0).to_i
    @seconds -= (hours * 60 * 60).to_i
    minutes = (@seconds / 60.0).to_i
    @seconds -= (minutes * 60).to_i
    return "#{sprintf '%02d', hours}:#{sprintf '%02d', minutes}:#{sprintf '%02d', @seconds}"
  end
    
  
end