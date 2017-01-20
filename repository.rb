class Repository
  def initialize
    #STATE
    @tasks = []
  end

  #BEHAVIOR
  # add a task
  # remove a task
  # find
  # return all tasks

  def all
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def find_task(index)
    return @tasks[index]
  end
end
