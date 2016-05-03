class HomeController < ApplicationController
  def welcome
  	@events = Event.find_by_sql("select * from events where event_date >= NOW() order by event_date")
  end
end
