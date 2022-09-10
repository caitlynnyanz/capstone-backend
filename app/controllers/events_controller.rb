class EventsController < ApplicationController
  before_action :authenticate_user

  def index
    events = current_user.events.order(:color)
    render json: events.as_json
  end
  
  def show
    event = Event.find_by(id: params[:id])

    if event.user_id == current_user.id
      render json: event.as_json
    else
      render json: {error: "Please login to view event."}
    end
  end

  def create
    event = Event.new(
      user_id: current_user.id,
      habit_id: params[:habit_id],
      goal_id: params[:goal_id],
      task_id: params[:task_id],
      title: params[:title],
      start: params[:start],
      end: params[:end]
    )

    if event.save
      render json: event.as_json
    else
      render json: { errors: event.errors.full_messages }, status: 422
    end
  end

  def update
    event_id = params[:id]
    event = Event.find_by(id: event_id)

    event.habit_id = params[:habit_id] || event.habit_id
    event.goal_id = params[:goal_id] || event.goal_id
    event.task_id = params[:task_id] || event.task_id
    event.title = params[:title] || event.title
    event.start = params[:start] || event.start
    event.end = params[:end] || event.end


    if event.save
      render json: event.as_json
    else
      render json: { errors: event.errors.full_messages }, status: 422
    end
  end

  def destroy
    event_id = params[:id]
    event = Event.find_by(id: event_id)
    event.destroy

    render json: { message: "Event successfully deleted!" }
  end
end