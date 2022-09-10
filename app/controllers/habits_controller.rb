class HabitsController < ApplicationController
  before_action :authenticate_user

  def index
    habits = current_user.habits
    render json: habits.as_json
  end
  
  def show
    habit = Habit.find_by(id: params[:id])

    if habit.user_id == current_user.id
      render json: habit.as_json
    else
      render json: {error: "Please login to view habit."}
    end
  end

  def create
    habit = Habit.new(
      user_id: current_user.id,
      name: params[:name],
      description: params[:description],
      start_date: params[:start_date]
      # generated_end_date: ?,
      # type: ?,
    )

    if habit.save
      render json: habit.as_json
    else
      render json: { errors: habit.errors.full_messages }, status: 422
    end
  end

  def update
    habit_id = params[:id]
    habit = Habit.find_by(id: habit_id)

    habit.name = params[:name] || habit.name
    habit.description = params[:description] || habit.description
    habit.start_date = params[:start_date] || habit.start_date

    if habit.save
      render json: habit.as_json
    else
      render json: { errors: habit.errors.full_messages }, status: 422
    end
  end

  def destroy
    habit_id = params[:id]
    habit = Habit.find_by(id: habit_id)
    habit.destroy

    render json: { message: "Habit successfully deleted!" }
  end

end
