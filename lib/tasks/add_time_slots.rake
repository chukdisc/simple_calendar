task :add_time_slots => :environment do
  class MakeTimeSlots
    def initialize(length_of_creation_in_weeks)
      @length_of_creation_in_weeks = length_of_creation_in_weeks
    end

    def create_slots
      TimeSlot.create(@length_of_creation_in_weeks)
    end
  end
end
