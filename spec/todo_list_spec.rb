require 'todo_list'

describe TodoList do
  
  it "test if blank array initilized" do
    list = TodoList.new
    expect(list.return_todo).to eq []
  end

  it "add item to list" do
    list = TodoList.new
    list.add("Walk the dog")
    expect(list.return_todo).to eq ["Walk the dog"]
    list.add("Walk the cat")
    expect(list.return_todo).to eq ["Walk the dog", "Walk the cat"]
  end

  it "test for item removal" do
    list = TodoList.new
    list.add("Walk the dog")
    list.remove("Walk the dog")
    expect(list.return_todo).to eq []
  end


end