class TaskListsController < ApplicationController

  def index
    @task_lists = TaskList.order(:name)
  end

  def show
    @task_list = TaskList.new
    render "create_list"
  end

  def create_list
    @task_list = TaskList.create(name: params[:task_list][:name])
    if @task_list.valid?
      flash[:notice] = "Task List was created successfully!"
      redirect_to "/"
    else
      flash[:notice] = @task_list.errors.full_messages.join(", ")
      render "create_list"
    end
  end

  def edit
    TaskList.update(params[name: params
  end
end

