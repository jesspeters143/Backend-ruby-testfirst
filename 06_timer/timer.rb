class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds % 60
    minutes = (@seconds / 60) % 60
    hours = @seconds / (60**2)
    # allows to specify format that should be applied (string and numbers)
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  # pad numbers with zeros
  def padded(num)
    return '0' + num.to_s if num < 10
    return num.to_s if num >= 10
  end
end