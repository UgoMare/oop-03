class View
  #All the puts and gets will be in the view

  # "1. [ ] Buy shampoo"
  # "2. [X] Clean the room"

  def display_all_tasks(tasks)
    puts '------------'
    tasks.each_with_index do |task, index|
      state = task.done? ? 'X' : ' '
      p "#{index + 1}. [#{state}] #{task.title}"
    end
    puts '------------'
  end

  def ask_for_task_title
    puts 'What is your task?'
    print '> '
    return gets.chomp
  end

  def ask_for_task_index
    p 'What task do you want to mark as done?'
    print '> '
    return gets.chomp.to_i - 1
  end

end





