require 'todo'
require 'todo_list'

describe "Todo List Integration" do
  it "returns all incomplete todos" do
    todo_list = TodoList.new
    todo_1 = Todo.new("Wash dishes")
    todo_list.add(todo_1)
    expect(todo_list.incomplete).to eq [todo_1]
  end

  it "returns all complete todos" do
    todo_list = TodoList.new
    todo_1 = Todo.new("Wash dishes")
    todo_list.add(todo_1)
    todo_1.mark_done!
    expect(todo_list.complete).to eq [todo_1]
  end

  it "marks all todos as complete" do
    todo_list = TodoList.new
    todo_1 = Todo.new("Wash dishes")
    todo_2 = Todo.new("Listen to music")
    todo_list.add(todo_1)
    todo_list.add(todo_1)
    todo_list.give_up!
    expect(todo_list.incomplete).to eq []
  end
end
