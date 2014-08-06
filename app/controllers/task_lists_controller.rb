class TaskListsController < ApplicationController

  def new
    @task_list = TaskList.new
    render "create_list"
  end

  def index
    @task_lists = TaskList.order(:name)
  end

  def show
    @task_list = TaskList.new
    render "create_list"
  end

  def create
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
    @task_list = TaskList.find(params[:id])
  end

  def update
    @task_list = TaskList.find(params[:id]).update(:name => params[:task_list][:name])
    flash[:notice] = "Task List was updated successfully!"
    redirect_to "/"
  end

  def add_task_page
    @task = Task.new
    @task_list_id = params[:id]
  end
end

