require_relative 'task'
require_relative 'repository'
require 'pry-byebug'
require "sinatra"
require "sinatra/reloader" if development?
require "better_errors"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

REPO = Repository.new('todo.csv')

get '/' do
  @tasks = REPO.all
  # binding.pry
  erb :home
end

get '/new_task' do
  #display a page with a form with a title
  erb :new
end

post '/create_task' do
  # binding.pry
  #retrive the title of the task
  task_name = params['task_name']
  #create a new instance of a task
  new_task = Task.new(task_name)
  #store the new task inside the Repo
  REPO.add_task(new_task)
  redirect '/'
end





# require_relative 'task'
# require_relative 'repository'
# require_relative 'view'
# require_relative 'controller'
# require_relative 'router'


# repo = Repository.new('todo.csv')
# view = View.new

# controller = Controller.new(view, repo)
# router = Router.new(controller)
# router.run



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
