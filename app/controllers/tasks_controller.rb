class TasksController < ApplicationController
  before_action :set_list, only: %i[edit update destroy]

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

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def task_params
    params.require(:task).permit(:content)
  end
end
