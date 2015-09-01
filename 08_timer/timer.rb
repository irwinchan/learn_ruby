class Timer
  attr_accessor :seconds

  def initialize
    @hours = 0
    @minutes = 0
    @seconds = 0
  end

  def time_string
    total_seconds = @seconds + (@minutes * 60) + (@hours * 3600)
    hrs = total_seconds / 3600
    total_seconds -= hrs * 3600

    mins = total_seconds / 60
    total_seconds -= mins * 60

    time = Time.new(2015, 1, 1, hrs, mins, total_seconds)
    time.strftime("%H:%M:%S")
  end

end