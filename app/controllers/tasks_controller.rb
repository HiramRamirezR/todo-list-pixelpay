class TasksController < ApplicationController
  before_action :set_list, only: %i[destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @list = List.find(params[:list_id])
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @list = List.find(params[:list_id])
    @task.list = @list
    @task.save
    redirect_to list_path(@list)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to list_path(@task.list)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def task_params
    params.require(:task).permit(:content)
  end
end
