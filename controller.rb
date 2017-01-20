require_relative 'task'

class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  #CRUD
  #1- Add a task X
  #2- Mark a task / Edit/ Update
  #3- View all the tasks X
  #4- Delete

  def list_all_tasks
    #instance of View
    tasks = @repository.all # Array of tasks
    @view.display_all_tasks(tasks) #View to display all the tasks
  end

  def add_task
    #1- What do you want to do?
    title = @view.ask_for_task_title
    #2- Create a new task with given title
    new_task = Task.new(title)
    #3- Add the task to the repo
    @repository.add_task(new_task)
  end

  def mark_task_as_done
    #1- Ask the user the index of the task
    # you want to mark as done
    index = @view.ask_for_task_index
    #2- Retrieve the task with given index
    task = @repository.find_task(index)
    #3- mark the task as done
    task.mark_as_done
  end

end






