class Event < ActiveRecord::Base
   belongs_to :user
   has_many :likes
   validate :date_of_event

   def date_of_event
   	  if event_date < Time.now.utc
   	  	errors.add(:event_date, "can't be in the past")
   	  end
   end
end
