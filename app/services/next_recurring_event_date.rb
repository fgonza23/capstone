class NextRecurringEventDate < Struct.new(:recurring_event)
  def calculate
    # TODO: Needs to handle user timezones
    t = Time.zone.now.next_week(day_of_week) + offset.seconds
    [(t-7.days), t].detect(&:future?).utc
  end

  private

  # Convert integer to symbol
  def day_of_week
    Date::DAYNAMES.fetch(recurring_event.day).downcase.to_sym
  end

  def offset
    t, am_pm = recurring_event.time.downcase.split(' ')
    hh, mm = t.split(':')
    am_pm_offset = (am_pm == 'pm' ? 3600*12 : 0)
    offset = Integer(hh)*3600 + Integer(mm)*60
    offset + am_pm_offset
  end
end