class TasksController < ApplicationController
  
  def index # see all
    @tasks = Task.all
  end

  def show # see one
    @task = Task.find(params[:id])
  end

  def new # CREATE
    @task = Task.new
  end

  def create # CREATE
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
