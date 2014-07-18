class TimeSlot < ActiveRecord::Base
  DURATION = 3.hours

  def self.available
    where(booking_id: nil)
  end

  def day_of_week 
    started_at.strftime("%A")
  end

  def label
    "#{started_at.hour} to #{ended_at.hour}"
  end

  def ended_at
    started_at + DURATION
  end
end
