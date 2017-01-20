require 'pry-byebug'
require_relative 'task'
require_relative 'repository'
require_relative 'view'
require_relative 'controller'
require_relative 'router'

repo = Repository.new
view = View.new

controller = Controller.new(view, repo)
router = Router.new(controller)
router.run



# #SCENARIO
# #List al the tasks
# controller.list_all_tasks
# #Add a new task
# controller.add_task
# #List all the tasks
# controller.list_all_tasks
# #Mark a task as done
# controller.mark_task_as_done
# #List all the tasks
# controller.list_all_tasks
