class GoalsController < ApplicationController
  before_action :authenticate_user

  def index
    goals = current_user.goals
    render json: goals.as_json(methods: [:habit])
  end

  def weekly_goals
    today = Date.today

    weekly_goals = current_user.goals.where("start_date <= ? AND end_date >= ?", today, today).order(:habit_id)

    render json: weekly_goals.as_json(methods: [:habit])

  end
  
  def show
    goal = Goal.find_by(id: params[:id])

    if goal.user_id == current_user.id
      render json: goal.as_json
    else
      render json: {error: "Please login to view goal."}
    end
  end

  def create
    goal = Goal.new(
      user_id: current_user.id,
      habit_id: params[:habit_id],
      # type: ?,
      name: params[:name],
      description: params[:description]
      # set_date: ?,
      # achieve_date: ?,
      # end_refelction: ?,
      
    )

    if goal.save
      render json: goal.as_json
    else
      render json: { errors: goal.errors.full_messages }, status: 422
    end
  end

  def update
    goal_id = params[:id]
    goal = Goal.find_by(id: goal_id)

    goal.habit_id = params[:habit_id] || goal.habit_id
    goal.name = params[:name] || goal.name
    goal.description = params[:description] || goal.description

    if goal.save
      render json: goal.as_json
    else
      render json: { errors: goal.errors.full_messages }, status: 422
    end
  end

  def destroy
    goal_id = params[:id]
    goal = Goal.find_by(id: goal_id)
    goal.destroy

    render json: { message: "Goal successfully deleted!" }
  end
end
