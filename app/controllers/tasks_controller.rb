class TasksController < ApplicationController
before_action :set_task, only: [:edit,:update,:show, :destroy]
  def index
    @tasks = Task.all
  end

  def show

  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
  end

  def edit

  end

  def update
    redirect_to index_task_path
    @task.update(task_params)
  end

  def destroy
    @task.destroy
    redirect_to task_path
  end


  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
