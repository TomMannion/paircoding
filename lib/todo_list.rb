# As a user
# So that I can keep track of my tasks
# I want a program that I can add todo tasks to and see a list of them.

# As a user
# So that I can focus on tasks to complete
# I want to mark tasks as complete and have them disappear from the list.

class TodoList
# class TodoList

  def initialize
  # def initilize - blank array @todo_list
    @todo_list = []
  end

  def add(task) # task is string
    #add task to todo_list array
    @todo_list << task
  end

  def return_todo
    # return todo array
    return @todo_list
  end

  def remove(task) # remove todo item from array todo_list
    # delete todo item from todo_list array
    @todo_list.delete(task)
  end
end




