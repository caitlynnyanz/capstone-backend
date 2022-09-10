class TasksController < ApplicationController
  before_action :authenticate_user

  def index
    tasks = current_user.tasks
    render json: tasks.as_json
  end

  def active_tasks

    active_tasks = current_user.tasks.where("completed": false)

    render json: active_tasks.as_json

  end
  
  def show
    task = Task.find_by(id: params[:id])

    if task.user_id == current_user.id
      render json: task.as_json
    else
      render json: {error: "Please login to view task."}
    end
  end

  def create
    task = Task.new(
      user_id: current_user.id,
      goal_id: params[:goal_id],
      name: params[:name],
      notes: params[:notes]
      # status: ?,
    )

    if task.save
      render json: task.as_json
    else
      render json: { errors: task.errors.full_messages }, status: 422
    end
  end

  def update
    task_id = params[:id]
    task = Task.find_by(id: task_id)

    task.goal_id = params[:goal_id] || task.goal_id
    task.name = params[:name] || task.name
    task.notes = params[:notes] || task.notes

    if task.save
      render json: task.as_json
    else
      render json: { errors: task.errors.full_messages }, status: 422
    end
  end

  def destroy
    task_id = params[:id]
    task = Task.find_by(id: task_id)
    task.destroy

    render json: { message: "Task successfully deleted!" }
  end

end
