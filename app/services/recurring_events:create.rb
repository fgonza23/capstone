# app/services/recurring_events/create.rb
class RecurringEvents::Create < Struct.new(:user, :params)
  def call
    recurring_event = user.recurring_events.build(params)
    recurring_event.save &&
      Events::Schedule.new(recurring_event).call
    recurring_event
  end
end
