class JournalsController < ApplicationController
  before_action :authenticate_user

  def index
    journals = current_user.journals.reverse
    render json: journals.as_json(methods: [:habit])
  end
  
  def show
    journal = Journal.find_by(id: params[:id])

    if journal.user_id == current_user.id
      render json: journal.as_json
    else
      render json: {error: "Please login to view journal."}
    end
  end

  def create
    journal = Journal.new(
      user_id: current_user.id,
      habit_id: params[:habit_id],
      goal_id: params[:goal_id],
      title: params[:title],
      body: params[:body],
      date: params[:date]
    )

    if journal.save
      render json: journal.as_json
    else
      render json: { errors: journal.errors.full_messages }, status: 422
    end
  end

  def update
    journal_id = params[:id]
    journal = Journal.find_by(id: journal_id)

    journal.habit_id = params[:habit_id] || journal.habit_id
    journal.goal_id = params[:goal_id] || journal.goal_id
    journal.title = params[:title] || journal.title
    journal.body = params[:body] || journal.body
    journal.date = params[:date] || journal.date


    if journal.save
      render json: journal.as_json
    else
      render json: { errors: journal.errors.full_messages }, status: 422
    end
  end

  def destroy
    journal_id = params[:id]
    journal = Journal.find_by(id: journal_id)
    journal.destroy

    render json: { message: "Journal successfully deleted!" }
  end
end
