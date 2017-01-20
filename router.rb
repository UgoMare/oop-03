class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    #Infinite loop of actions
    loop do
      #1- Ask the user for an action
      print_menu
      action = gets.chomp.to_i
      #2- Do the action
      case action
      when 1
        @controller.list_all_tasks
      when 2
        @controller.add_task
      when 3
        @controller.mark_task_as_done
      else
        p 'Wrong!'
      end
    end
  end

  private
  def print_menu
    p 'What do you want to do?'
    p '1- List all tasks'
    p '2- Add a task'
    p '3- Mark a as done'
  end

end
