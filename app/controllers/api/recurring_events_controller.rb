class Api::RecurringEventsController < ApplicationController

  # before_action :authenticate_user


  def new

    # RunEventJob.set(wait_until: RecurringEvent.datetime.perform_later("run this")
    # render json: {message: "this doesnt break"}

    RunEventJob.set(wait: 30.seconds).perform_later
    render json: {message: "this doesnt break"}
  end

  def create

    @recurring_event = RecurringEvent.new(
                                          user_id: current_user.id,
                                          start_time: params[:start_time],
                                          meal: params[:meal],
                                          frequency: params[:frequency]
                                          )

    if @recurring_event.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @recurring_event.errors.full_messages}, status: :unprocessable_entity
    end
   
  end

  def Event(start)

    if recurring_event.empty?
      [self]
    else
      start_date = start.datetime
    end
  end
end

# wait_until.recurringevent.datetime

# settimer make a method
