class Events::Schedule < Struct.new(:recurring_event)
  def call
    next_date = NextRecurringEventDate.new(recurring_event).calculate
    event = recurring_event.events.build(run_at: next_date)
    event.save && schedule_background_job(event)
  end

  private

  def schedule_background_job(event)
    RunEventJob.set(wait_until: event.run_at)
      .perform_later(event)
  end
end
