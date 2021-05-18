class TasksController < ApplicationController
  before_action :set_task, only: [ :show, :edit, :update, :destroy]


  def index
    @tasks = Task.all
  end

  def show
  end

  def new
   @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to task_path(task.id)
  end

  def edit
  end

  def update
    # raise
    @task.update(task_params)
    redirect_to task_path(@task.id)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  # strong params
  def task_params
    params.require(:task).permit(:name, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end


end
