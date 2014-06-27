class TimeSlot < ActiveRecord::Base
  def weekday
    started_at.wday
  end

  def label
    "#{started_at.hour} to #{ended_at.hour}"
  end

  def ended_at
    started_at + 3.hours
  end
end
