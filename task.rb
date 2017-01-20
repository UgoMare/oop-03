class Task
  #STATES
  attr_reader :title, :done
  #Task.new('Do laundry') -> done is false
  #Task.new('Do laundry', true) -> done is true
  def initialize(title, done = false)
    @title = title
    @done = done
  end

  #BEHAVIOR
  def mark_as_done
    @done = true
  end

  def done?
    return @done
  end

end



