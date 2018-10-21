class Api::RecurringEventsController < ApplicationController

  before_action :authenticate_user

  def new
    @reccuring_event = ReccuringEvent.new

  end

  def create

    @recurring_event = RecurringEvents.new(
                                          user_id: current_user.id,
                                          date: params[:date],
                                          time: params[:time],
                                          meal: params[:meal]
                                          )


    if @recurring_event.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @recurring_event.errors.full_messages}, status: :unprocessable_entity
    end
  end


end
