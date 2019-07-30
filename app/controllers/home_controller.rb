class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @projects = Project.all
    # CHANGE popular flyers to pull flyers where the most users are attending then REMOVE this comment
    @popular_flyers = Flyer.order('max_attendees').limit(3)
  end
end
