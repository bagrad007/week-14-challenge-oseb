class TodosController < ApplicationController
  def index
    todos = Todo.all
    render json: todos
  end

  def create
    render json: Todo.create(todo_params)
  end

  def todo_params
    params.require(:todo).permit(:content)
  end
end
