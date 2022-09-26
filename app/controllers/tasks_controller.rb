class TasksController < ApplicationController
  def new
    @list = List.find(params[:id])
    # @list = List.find(params[:list_id])
    @task = Task.new
  end
end
