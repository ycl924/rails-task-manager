class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]



  def index         # GET /tasks
    @tasks = Task.all
  end

  def show          # GET /tasks/:id
  end

  def new           # GET /tasks/new
   @task = Task.new
  end

  def create        # POST /tasks
    @task = Task.new(task_params)
    @task.save
    redirect_to action: "index"
  end

  def edit          # GET /tasks/:id/edit
  end

  def update        # PATCH /tasks/:id
     @task.update(task_params)
     redirect_to action: "show"
  end

  def destroy       # DELETE /tasks/:id
    @task.destroy
    redirect_to action: "index"
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:task).permit(:title, :details, :completed)
  end
end

