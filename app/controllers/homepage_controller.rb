class HomepageController < ApplicationController

  def index
    @current_meeting = Meeting.last
  end

end
