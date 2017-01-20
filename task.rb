class Task
  #STATES
  attr_reader :title
  def initialize(title)
    @title = title
    @done = false
  end

  #BEHAVIOR
  def mark_as_done
    @done = true
  end

  def done?
    return @done
  end

end



