require_relative './todo.rb'

class TodoList
  def initialize
    @todos = []
  end

  def add(todo) 
    @todos << todo
  end

  def incomplete
    @todos.select {|todo| !todo.done?}
  end

  def complete
    @todos.select {|todo| todo.done?}
  end

  def give_up!
    @todos.map {|todo| todo.mark_done!}
  end
end