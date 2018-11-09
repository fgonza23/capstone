class RunEventJob < ApplicationJob
  queue_as :default

  rescue_from ActiveJob::DeserializationError do |exception|
     exception.original_exception == ActiveRecord::RecordNotFound
   end

   def perform

    p 

      # puts event 
    # RunEventJob
     # Perform the relevant work here. Example:
     # ReminderMailer.notify(event).deliver_later!

     # Schedule the next occurence of the event
     # Events::Schedule.new(event.recurring_event).call
   end

   after_perform do |event|
    self.class.set(wait: 30.seconds).perform_later
  end
end
