class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

 def show
    @task = Tasks.find(params[:id])
  end

 def new
  @task = Task.new
 end

 def create
    @task = Task.find(task_params)
    @task.save
    redirect_to tasks_path(@tasks)
  end

  def edit
    @task = Task.find(params[:id])
  end

 def destroy
    @task = Task.find(task_params)
    @task.save
    redirect_to tasks_path(@tasks)
 end

  def update
   @task = Task.find(params[:id])
    @task.update(params_task)
    redirect_to tasks_path(@tasks)
  end

  private

  def task_params
    params.require(:task).permit(:details, :title)
  end

end
