require_relative 'task'
require 'csv'

class Repository
  def initialize(csv_file)
    #STATE
    @tasks = []
    @csv_file = csv_file

    CSV.foreach(csv_file) do |row|
      #@tasks is an Array of `Task` instances
      # binding.pry
      done = row[1] == 'true' ? true : false # Convert a 'true' Striong into bool
      task = Task.new(row[0], done)
      @tasks << task
    end

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
    write_csv
  end

  def find_task(index)
    return @tasks[index]
  end

  private
  def write_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @tasks.each do |task|
        csv << [task.title, task.done.to_s]
      end
    end
  end
end
