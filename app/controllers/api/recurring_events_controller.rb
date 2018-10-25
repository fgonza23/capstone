class Api::RecurringEventsController < ApplicationController

  before_action :authenticate_user

  def new
    @recurring_event = RecurringEvent.new

  end

  def create

    @recurring_event = RecurringEvent.new(
                                          user_id: current_user.id,
                                          datetime: params[:datetime],
                                          meal: params[:meal]
                                          )


    if @recurring_event.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @recurring_event.errors.full_messages}, status: :unprocessable_entity
    end
  end


end
